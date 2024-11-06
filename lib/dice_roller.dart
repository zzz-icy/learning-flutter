import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  //* we can add this const here due to the class separation
  //* And internally Flutter in the end,
  //* make sure that the state object can change
  //* which is why we don't add a cons construct to that.
  //* But the widget will be kept constant by Flutter,
  //* it will take care of that for us.

  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

// When using "statefulWidget"
// you will always work with two classes.
// This is the first class here
// and then you must add a second class
// which typically should start with an underscore

//* they're managed in a special way internally by Flutter.
//* Flutter essentially requires these two classes
//* to be detached from each other.

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  void rollDice() {
    //* build will execute when we call setState here.
    setState(() {
      //* not efficient
      // currentDiceRoll = Random().nextInt(6) + 1;

      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          // asset , a named constructor
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
