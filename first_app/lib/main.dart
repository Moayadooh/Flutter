import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  //runApp(const MaterialApp(home: Text("Hello World")));
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.green,
        body: GradientContainer(),
      ),
    ),
  );
}
