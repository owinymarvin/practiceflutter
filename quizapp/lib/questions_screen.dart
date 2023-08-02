import 'package:flutter/material.dart';
import 'package:quizapp/answer_button.dart';
import 'package:quizapp/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.answers.map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {},
              );
            }),

            /* old way of doing staff 

            AnswerButton(
              answerText: currentQuestion.answers[0],
              onTap: () {},
            ),
            AnswerButton(
              answerText: currentQuestion.answers[1],
              onTap: () {},
            ),
            AnswerButton(
              answerText: currentQuestion.answers[2],
              onTap: () {},
            ),
            AnswerButton(
              answerText: currentQuestion.answers[3],
              onTap: () {},
            ),

            */
          ],
        ),
      ),
    );
  }
}
