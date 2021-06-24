import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  var questionIndex = 0;
  Widget build(BuildContext context) {
    void answerPrinter(String value) {
      print("$value clicked!");
    }

    void answerPrinter1() {
      print("Answer chosen");
    }

    var questions = <String>[
      "Favourite colour?",
      "Favourite animal",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World App"),
        ),
        body: Column(children: <Widget>[
          Text(
            questions[questionIndex],
          ),
          Row(
            children: <Widget>[
              ElevatedButton(
                onPressed: answerPrinter1,
                child: Text("Answer1"),
              ),
              ElevatedButton(
                onPressed: () => answerPrinter("Answer2"),
                child: Text("Answer2"),
              )
            ],
          )
        ]),
      ),
    );
  }
}
