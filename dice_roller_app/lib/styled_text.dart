import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  //const StyledText(String text, {super.key}): text = text;
  const StyledText(this.text, {super.key});
  final String text;
  //const --> initilize once at compile time
  //final --> initilize once at run time

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
