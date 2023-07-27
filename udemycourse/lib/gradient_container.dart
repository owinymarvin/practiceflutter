import 'package:flutter/material.dart';
// import 'package:udemycourse/text%20styles/white_text_style.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  void rollDice() {}

  var currentDiceFace = 'assets/images/dice/dice-1.png';

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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: AssetImage('assets/images/dice/dice-1.png'),
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
      ),
    );
  }
}
