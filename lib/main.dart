import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var counter = 0;
  final questions = [
    "What is your native country name?",
    "What is the name of programming language you are learning at present?",
    "What is your favourite food?"
  ];

  incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Column(
          children: [
            Center(
              child: Question(
                qText: questions[counter],
              ),
              widthFactor: double.infinity,
            ),
            ElevatedButton(onPressed: incrementCounter, child: const Text("Answer 1")),
            ElevatedButton(onPressed: incrementCounter, child: const Text("Answer 2")),
            ElevatedButton(onPressed: incrementCounter, child: const Text("Answer 3")),
            ElevatedButton(onPressed: incrementCounter, child: const Text("Answer 4"))
          ],
        ),
      ),
    );
  }
}
