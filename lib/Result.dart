import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String get finalResult {
    return "You did great!";
  }

  final VoidCallback resetQuiz;

  Result(this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(finalResult),
        TextButton(onPressed: resetQuiz, child: Icon(Icons.refresh))
      ]),
    );
  }
}
