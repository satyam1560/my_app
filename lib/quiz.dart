import 'package:flutter/material.dart';
import 'question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final VoidCallback answerQuestion;
  final int questionIndex;
  const Quiz(
      {required this.question,
      required this.answerQuestion,
      required this.questionIndex,
      super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex]['questionText'] as String,
        ),
        // ...(question[questionIndex]['answer'] as List<String>).map((answer) {
        //   return Answer(answerQuestion, answer);
        // }).toList()
        //spread operator
        for (String item in question[questionIndex]['answer'] as List<String>)
          Answer(answerQuestion, item),
      ],
    );
  }
}
