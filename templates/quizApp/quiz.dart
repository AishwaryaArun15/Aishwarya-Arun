import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
    this.questions,
    this.answerQuestion,
    this.questionIndex,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["question"]),
        ...(questions[questionIndex]["options"] as List<String>).map((answer) {
          return Answer(() => answerQuestion(questionIndex, answer), answer);
        }),
      ],
    );
  }
}

// main =>i nfo
// quiz = ques(str) ans(func, anst)
// ques => str
//ans => options buttons
