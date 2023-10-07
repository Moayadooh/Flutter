import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  //GradientContainer({key}): super(key: key);
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 242, 11, 11),
            Color.fromARGB(255, 5, 238, 25)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          "My first Flutter app",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
