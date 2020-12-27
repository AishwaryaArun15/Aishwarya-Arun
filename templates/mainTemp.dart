import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      "question": "Which Us city do the Avengers battle the Chitauri",
      "options": ["Las Angeles", "Miami", "NewYork"],
    },
    {
      "question": "Who is Loki's adoptive brother?",
      "options": ["Odin", "Thor", "Tony"],
    },
    {
      "question": "Who sells Ultron Vibranium and instantly makes billions",
      "options": ["Tony Stark", "Nick Fury", "Ulysses Klaue"],
    }
  ];
  var questionIndex = 0;
  var ans = ["NewYork", "Thor", "Ulysses Klaue"];
  var result = 0;
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          backgroundColor: Colors.cyan[300],
        ),
        body: Container(
          child:
        	Text("Hello from Main")
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
