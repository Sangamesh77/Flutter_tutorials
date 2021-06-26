import 'package:flutter/material.dart';
import './Question_widget.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    // void answerPrinter(String value) {
    //   print("$value clicked!");
    //   if(questionIndex < 1)
    //     setState(() {
    //       questionIndex += 1;
    //     });
    //   else{
    //     setState(() {
    //       questionIndex -= 1;
    //     });
    //   }
    // }

    void answerPrinter(String value) {
      print("$value clicked!");
      if (questionIndex < 1) {
        questionIndex += 1;
        setState(() {});
      } else {
        questionIndex -= 1;
        setState(() {});
      }
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
          Question(
            questions[questionIndex],
          ),
          Row(
            children: <Widget>[
              ElevatedButton(
                onPressed: () => answerPrinter("Answer 1"),
                child: Text("Answer1"),
              ),
              ElevatedButton(
                onPressed: () => answerPrinter("Answer 2"),
                child: Text("Answer2"),
              )
            ],
          )
        ]),
      ),
    );
  }
}
