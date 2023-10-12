import 'package:flutter/material.dart';
import 'package:dice_roller_app/gradient_container.dart';

const colors = [
  Color.fromARGB(255, 71, 23, 183),
  Color.fromARGB(255, 5, 238, 25)
];

void main() {
  //runApp(const MaterialApp(home: Text("Hello World")));
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.green,
        body: GradientContainer(colors: colors),
      ),
    ),
  );
}
