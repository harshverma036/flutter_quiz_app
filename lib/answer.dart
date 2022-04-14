import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String optionText;

  Answer(this.selectHandler, this.optionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 22, right: 22),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(optionText),
        onPressed: selectHandler,
        textColor: Colors.white,
      ),
    );
  }
}