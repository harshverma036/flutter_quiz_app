// ignore_for_file: deprecated_member_use, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // print(questions[_questionIndex]);
  }

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App!"),
        ),
        body: Column(children: [
          Question(
            questions[_questionIndex]["questionText"] as String,
          ),
          ...(questions[_questionIndex]["answers"] as List<String>).map((answer) {
            return Answer(_answerQuestions, answer);
          }).toList()
        ]),
      ),
    );
  }
}
