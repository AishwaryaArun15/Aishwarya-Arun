import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  // final int resultValue;
  final Function answerQuestion;

  Quiz(
    this.questions,
    this.answerQuestion,
    this.questionIndex,
    // @required this.resultValue,
  );

  @override
  Widget build(BuildContext context) {
    return  Container(child: Text("Hello from Quiz"))
  }
}
