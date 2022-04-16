import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

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
      child: Text(
        resultText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
      ),
    );
  }
}
