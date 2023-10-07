import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

//Alignment? startAlignment;
//startAlignment = Alignment.topLeft;
//Alignment startAlignment = Alignment.topLeft;
//var endAlignment = Alignment.bottomRight;
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //GradientContainer({key}): super(key: key);
  const GradientContainer({super.key, required this.colors});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText("text"),
      ),
    );
  }
}
