import 'package:flutter/material.dart';
//import 'package:first_app/styled_text.dart';

//Alignment? startAlignment;
//startAlignment = Alignment.topLeft;
//Alignment startAlignment = Alignment.topLeft;
//var endAlignment = Alignment.bottomRight;
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //GradientContainer({key}): super(key: key);
  const GradientContainer({super.key, required this.colors});

  // const GradientContainer.purple({super.key})
  //     : colors = const [Colors.deepPurple, Colors.indigo];

  final List<Color> colors;

  void rollDice() {}

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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-2.png',
              width: 200,
            ),
            const SizedBox(height: 20), //space between image and button
            TextButton(
                /* onPressed: () {
                }, */
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    //padding: const EdgeInsets.only(top: 20),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 28,
                    )),
                child: const Text('Roll Dice'))
          ],
        ), //StyledText("text"),
      ),
    );
  }
}
