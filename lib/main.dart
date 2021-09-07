import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

//or
// void main => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Maps
    const _questions = const [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'White', 'score': 10},
          {'text': 'Black', 'score': 5},
          {'text': 'Red', 'score': 3},
          {'text': 'Yellow', 'score': 2}
        ]
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Dog', 'score': 10},
          {'text': 'Monkey', 'score': 5},
          {'text': 'Horse', 'score': 3},
          {'text': 'Jaguar', 'score': 1}
        ]
      },
      {
        'questionText': 'What\'s your favorite Instructor?',
        'answers': [
          {'text': 'Sandeep', 'score': 10},
          {'text': 'Elon Musk', 'score': 10},
          {'text': 'Abdul Kalam', 'score': 10},
          {'text': 'Dave', 'score': 5}
        ]
      },
    ];

    /**************************************** Info ************************************************/
    //const tips
    // const names =["dummy"];
    // names=[] //this will not work

    //value is constant but we can assign a other value to the listOfEmp variable
    // var listOfEmp = const["sandeep","kumar"];
    // listOfEmp.add("ojha");//error Cannot add to an unmodifiable list
    // listOfEmp = ["others"]; // possible

    //Neither variable reassign nor value got change
    // const listOfPeople = const["s","q"];

    return MaterialApp(
      //UI design screen of the application
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion)
              : Result(
                  resultScore: _totalScore,
                  pressHandler: _resetQuiz,
                )),
    );
  }
}
