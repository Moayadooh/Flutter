import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyForm1(),
    );
  }
}

class MyForm1 extends StatefulWidget {
  const MyForm1({super.key});

  @override
  //State<StatefulWidget> createState() {
  State<MyForm1> createState() {
    return _MyForm();
  }
}

class _MyForm extends State<MyForm1> {
  final _titleController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center(
        child: TextField(
          controller: _titleController,
          maxLength: 50,
          decoration: const InputDecoration(
            label: Text('Title'),
          ),
        ),
      ),
    );
  }
}
