import 'package:flutter/material.dart';

import 'Answer.dart';
import 'Question_widget.dart';


class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function(String) answerPrinter;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerPrinter,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['question'],
        ),
        ...(questions[questionIndex]['answer'] as List).map((answer) {
          return Answer(answerPrinter, answer);
        }).toList()
      ],
    );
  }
}
