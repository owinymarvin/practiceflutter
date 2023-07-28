import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
 
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Image(
            image: AssetImage('assets/images/quiz-logo.png'),
            width: 300.0,
            color: Color.fromARGB(144, 255, 255, 255),
          ),
          const SizedBox(
            height: 60.0,
          ),
          const Text(
            'Learn Flutter the Nice Way',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
