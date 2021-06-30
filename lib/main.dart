import 'package:flutter/material.dart';
import 'package:flutter_course_app_1/Quiz.dart';
import 'package:flutter_course_app_1/Result.dart';

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

  final _questions = const [
    {
      'question': "Question 1",
      'answer': ["q1op1", "q1op2", "q1op3", "q1op4"]
    },
    {
      'question': "Question 2",
      'answer': ["q2op1", "q2op2", "q2op3", "q2op4"]
    },
    {
      'question': "Question 3",
      'answer': ["q3op1", "q3op2", "q3op3", "q3op4"]
    },
  ];

  void _resetQuiz(){
    setState(() {
      questionIndex = 0;
    });
  }

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

    void answerPrinter(String x) {
      print("$x clicked!");
      if (questionIndex == 2) {
        //questionIndex = 0;
        setState(() {});
      } else {
        questionIndex += 1;
        setState(() {});
      }
    }


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World App"),
        ),
        body: (questionIndex != 2)
            ? Quiz(
                questions: _questions,
                answerPrinter: answerPrinter,
                questionIndex: questionIndex,
              )
            : Result(_resetQuiz),
      ),
    );
  }
}
