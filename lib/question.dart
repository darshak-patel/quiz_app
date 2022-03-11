import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({Key? key, required this.qText}) : super(key: key);

  final String qText;

  @override
  Widget build(BuildContext context) {
    return Text(
      qText,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25, fontStyle: FontStyle.italic),
    );
  }
}
