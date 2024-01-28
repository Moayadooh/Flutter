import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  //State<StatefulWidget> createState() {
  State<MyForm> createState() {
    return _MyForm();
  }
}

class _MyForm extends State<MyForm> {
  final _titleController = TextEditingController();

  void _showDialog() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Dialog Title'),
        content: Text(_titleController.text),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
            },
            child: const Text('Done'),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _titleController,
              maxLength: 50,
              decoration: const InputDecoration(
                label: Text('Title'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //print(_titleController.text);
                _showDialog();
              },
              child: const Text('Save Expense'),
            ),
          ],
        ),
      ),
    );
  }
}
