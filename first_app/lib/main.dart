import 'package:flutter/material.dart';

void main() {
  //runApp(const MaterialApp(home: Text("Hello World")));
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.green,
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 242, 11, 11),
            Color.fromARGB(255, 5, 238, 25)
          ])),
          child: const Center(
            child: Text("My first Flutter app"),
          ),
        ),
      ),
    ),
  );
}
