import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

//StatefulWidget widget to work with UI that can change
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

// "_" private class
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
    //print('Changing image...');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
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
    );
  }
}
