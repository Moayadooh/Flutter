import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  //State<StatefulWidget> createState() {
  State<MyForm> createState() {
    return _MyForm();
  }
}

final formatter = DateFormat.yMd();

class _MyForm extends State<MyForm> {
  DateTime? _selectedDate;
  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: now,
    ); //.then((value) {
    //},);
    setState(() {
      _selectedDate = pickedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            _selectedDate == null
                ? 'No date selected'
                : formatter.format(_selectedDate!),
          ),
          IconButton(
            onPressed: _presentDatePicker,
            icon: const Icon(
              Icons.calendar_month,
            ),
          ),
        ],
      ),
    );
  }
}
