import 'package:flutter/material.dart';

import 'api/local_auth_api.dart';

class Result extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const Result({
    Key? key,
    required this.result,
    required this.resetQuiz,
  }) : super(key: key);

  final VoidCallback resetQuiz;
  final int result;

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  late final int score;

  @override
  void initState() {
    score = widget.result;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Text(
          "Thank you for using quiz app, your total score is $score",
          style: const TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 40, fontStyle: FontStyle.italic),
        ),
      ),
      ElevatedButton(
          onPressed: () async {
            final isAuthenticated = await LocalAuthApi().authenticateWithBiometrics();
            if (isAuthenticated) {
              setState(() {
                widget.resetQuiz;
              });
            }
          },
          // () => setState(() {
          //       counter = 0;
          //     }),

          child: const Text('Start Quiz Again'))
    ]);
  }
}
