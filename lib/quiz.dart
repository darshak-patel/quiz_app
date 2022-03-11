import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  Quiz({Key? key, required this.questions, required this.incrementCounter, required this.counter}) : super(key: key);
  final List questions;
  final int counter;
  final Function incrementCounter;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Question(
            qText: (questions[counter]['qText']) as String,
          ),
          widthFactor: double.infinity,
        ),
        ...(questions[counter]['answers'] as List<Map<String, Object>>)
            .map((e) => Answer(aText: e["text"] as String, function: () => incrementCounter(e["score"])))
      ],
    );
  }
}
