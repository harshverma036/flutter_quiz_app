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
  var questions = [
    {
      "questionText": "What is your fav color?",
      "answers": ["Red", "Blue", "Green", "Black"]
    },
    {
      "questionText": "What is you fav choclate?",
      "answers": ["Dairy Milk", "5 Start", "Park", "KitKat"]
    }
  ];

  void _answerQuestions() {
    if (_questionIndex < questions.length) {
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
              : Result()
      ),
    );
  }
}
