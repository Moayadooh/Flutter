import 'package:demo_app/template.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Demo'),
          ),
        ),
        body: const Template(),
      ),
    ),
  );
}
