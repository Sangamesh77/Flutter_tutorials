import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String _answerVal;
  final Function(String) answerPrinter;
  Answer(this.answerPrinter,this._answerVal);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        child: Text(this._answerVal),
        onPressed: () => answerPrinter(this._answerVal),
      ),
    );
  }
}
