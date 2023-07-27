import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceFace = Random().nextInt(6) + 1;

  void rollDice() {
    setState(() {
      currentDiceFace = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(
            image: AssetImage('assets/images/dice/dice-$currentDiceFace.png'),
            width: 200,
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 28),
            ),
            child: Text('Roll Dice'),
          )
        ],
      ),
      /* was our custom widget

        child: WhiteTextStyle('Haq Haq. i want this word in white'),

        */
    );
  }
}
