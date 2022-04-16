import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetState;

  Result(this.totalScore, this.resetState);

  String get resultText {
    String resultPhrase;
    if (totalScore <= 15) {
      resultPhrase = "You are fucking awesome!!";
    } else {
      resultPhrase = "You are fucking mf!!";
    }
    return resultPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultText,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
        ),
        TextButton(
          child: Text("Restart Quiz!"),
          style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.blue)),
          onPressed: resetState,
        )
      ],
    ));
  }
}
