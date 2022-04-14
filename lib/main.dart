// ignore_for_file: deprecated_member_use, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

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
  var questionIndex = 0;
  void answerQuestions() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questions[questionIndex]);
  }

  var questions = ["What is your fav color", "What is you fav choclate"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App!"
          ),
        ),
        body: Column(children: [
          Text(questions[questionIndex],),
          RaisedButton(
            child: Text("Answer 1"),
            onPressed: answerQuestions,
          ),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: answerQuestions,
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: answerQuestions,
          ),
          RaisedButton(
            child: Text("Answer 4"),
            onPressed: answerQuestions,
          ),
        ]),
      ),
    );
  }
}
