import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
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
    {
      'qText': 'What is your native country name?',
      'answers': ['India', 'Canada', 'USA', 'UK']
    },
    {
      'qText': 'What is the name of programming language you are learning at present?',
      'answers': ['Java', 'Python', 'C++', 'Flutter']
    },
    {
      'qText': 'What is your favourite food?',
      'answers': ['Apple', 'Orange', 'Kiwi', 'Banana']
    },
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
          body: counter < questions.length
              ? Column(
                  children: [
                    Center(
                      child: Question(
                        qText: questions[counter]['qText'],
                      ),
                      widthFactor: double.infinity,
                    ),
                    ...(questions[counter]['answers'] as List<String>).map((e) => Answer(aText: e, function: incrementCounter))
                  ],
                )
              : const Center(
                  child: Text(
                    "Thank you for using quiz app",
                    style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 40, fontStyle: FontStyle.italic),
                  ),
                )),
    );
  }
}
