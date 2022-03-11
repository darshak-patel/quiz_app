import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/api/local_auth_api.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var counter = 0;
  var totalScore = 0;

  void incrementCounter(int score) {
    totalScore += score;
    setState(() {
      counter++;
    });
  }

  void resetQuiz() async {
    final isAuthenticated = await LocalAuthApi().authenticateWithBiometrics();
    if (isAuthenticated) {
      setState(() {
        totalScore = 0;
        counter = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'qText': 'What is your native country name?',
        'answers': [
          {'text': 'India', 'score': 3},
          {'text': 'Canada', 'score': 2},
          {'text': 'USA', 'score': 1},
          {'text': 'UK', 'score': 0},
        ]
      },
      {
        'qText': 'What is the name of programming language you are learning at present?',
        'answers': [
          {'text': 'Java', 'score': 2},
          {'text': 'Python', 'score': 0},
          {'text': 'Flutter', 'score': 3},
          {'text': 'C', 'score': 1},
        ]
      },
      {
        'qText': 'What is your favourite food?',
        'answers': [
          {'text': 'Apple', 'score': 1},
          {'text': 'Orange', 'score': 2},
          {'text': 'Kiwi', 'score': 0},
          {'text': 'Banana', 'score': 3}
        ]
      },
    ];
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Quiz App'),
          ),
          body: counter < questions.length
              ? Quiz(questions: questions, incrementCounter: incrementCounter, counter: counter)
              : Result(
                  result: totalScore,
                  resetQuiz: resetQuiz,
                )),
    );
  }
}
