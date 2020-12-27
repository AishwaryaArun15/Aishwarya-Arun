import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.cyan[100],
        textColor: Colors.grey[700],
        child: Text(
          answerText,
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        onPressed: selectHandler,
      ),
    );
  }
}


import 'dart:ui';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  Result(this.score);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
            child: Text("Your Score is    ", style: TextStyle(fontSize: 20))),
        Center(
          child: Text(
            score.toString(),
            style: TextStyle(backgroundColor: Colors.cyan[500], fontSize: 30),
          ),
        ),
      ],
    );
  }
}
