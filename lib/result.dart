import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Result({
    Key? key,
    required this.result,
    required this.resetQuiz,
  }) : super(key: key);

  final VoidCallback resetQuiz;
  final int result;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Text(
          "Thank you for using quiz app, your total score is $result",
          style: const TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 40, fontStyle: FontStyle.italic),
        ),
      ),
      ElevatedButton(onPressed: resetQuiz, child: const Text('Start Quiz Again'))
    ]);
  }
}
