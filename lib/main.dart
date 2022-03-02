import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Column(
          children: const [
            Center(
              child: Text(
                "Hello World",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, fontStyle: FontStyle.italic),
              ),
              widthFactor: double.infinity,
            ),
            ElevatedButton(onPressed: null, child: Text("Answer 1")),
            ElevatedButton(onPressed: null, child: Text("Answer 2")),
            ElevatedButton(onPressed: null, child: Text("Answer 3")),
            ElevatedButton(onPressed: null, child: Text("Answer 4"))
          ],
        ),
      ),
    );
  }
}
