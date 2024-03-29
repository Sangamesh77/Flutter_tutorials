import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _question;

  Question(this._question);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          _question,
          style: TextStyle(color: Colors.deepPurple, fontSize: 30),
          textAlign: TextAlign.center,
        ));
  }
}
