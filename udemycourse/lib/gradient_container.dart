import 'package:flutter/material.dart';
// import 'package:udemycourse/text%20styles/white_text_style.dart';
import 'package:udemycourse/dice_roller.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          /* before using custom class

            colors:[
              Color.fromARGB(255, 26, 2, 80),
              Color.fromARGB(255, 45, 7, 98),
            ],

          */
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: DiceRoller(),
    );
  }
}
