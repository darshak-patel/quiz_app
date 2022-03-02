import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({Key? key, this.qText}) : super(key: key);

  final qText;

  @override
  Widget build(BuildContext context) {
    return Text(
      qText,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25, fontStyle: FontStyle.italic),
    );
  }
}
