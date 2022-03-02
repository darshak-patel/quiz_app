import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  VoidCallback function;
  String aText;
  Answer({Key? key, required this.aText, required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: function, child: Text(aText));
  }
}
