// ignore_for_file: deprecated_member_use, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _total_score = 0;
  final questions = const [
    {
      "questionText": "What is your fav color?",
      "answers": [
        {"text": "Red", "score": 4},
        {"text": "Blue", "score": 6},
        {"text": "Green", "score": 10},
        {"text": "Black", "score": 1}
      ]
    },
    {
      "questionText": "What is you fav choclate?",
      "answers": [
        {"text": "5 Start", "score": 7},
        {"text": "Dairy Milk", "score": 12},
        {"text": "Park", "score": 8},
        {"text": "KitKat", "score": 20}
      ]
    }
  ];

  void _answerQuestions(int score) {
    if (_questionIndex < questions.length) {
      _total_score += score;
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
    // print(questions[_questionIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz App!"),
          ),
          body: _questionIndex < questions.length
              ? Quiz(
                  questions: questions,
                  answerQuestions: _answerQuestions,
                  questionIndex: _questionIndex,
                )
              : Result(_total_score)),
    );
  }
}
