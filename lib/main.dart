import 'package:flutter/material.dart';
import 'package:myapp_1/result.dart';

// import './question.dart';
// import './answer.dart';
// import './result.dart';
import './quiz.dart';

void main() {
  runApp(const MyApp());
}

// MyApp widget class
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    // implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': "what's your favorite color?",
      'answer': [
        {'text': 'red', 'score': 10},
        {'text': 'green', 'score': 5},
        {'text': 'yellow', 'score': 3},
        {'text': 'blue', 'score': 1}
      ],
    },
    {
      'questionText': "what's your favourite animal",
      'answer': [
        {'text': 'lion', 'score': 10},
        {'text': 'rabbit', 'score': 5},
        {'text': 'cat', 'score': 3},
        {'text': 'dog', 'score': 1}
      ],
    },
    {
      'questionText': "what's your favourite ______",
      'answer': [
        {'text': 'djlka', 'score': 10},
        {'text': 'adaff', 'score': 5},
        {'text': 'erwga', 'score': 3},
        {'text': 'ejhjk', 'score': 1}
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalscore = 0;

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalscore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("My First App")),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalscore, _reset)),
    );
  }
}
