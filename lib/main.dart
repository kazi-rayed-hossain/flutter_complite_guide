import 'package:flutter/material.dart';

import './question.dart';
// void main() {
//   runApp(MyApp());
// }
void main() => runApp( MyApp());

class MyApp extends StatefulWidget {
  

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite color ?',
      'what\'s your favorite animal ?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My 1st App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            // ignore: deprecated_member_use
            RaisedButton(
                child: const Text('Answer 1'), onPressed: _answerQuestion),
            // ignore: deprecated_member_use
            RaisedButton(
                child: const Text('Answer 2'), onPressed: _answerQuestion),
            // ignore: deprecated_member_use
            RaisedButton(
                child: const Text('Answer 3'), onPressed: _answerQuestion),
            // ignore: deprecated_member_use
            RaisedButton(
                child: const Text('Answer 4'), onPressed: _answerQuestion),
          ],
        ),
      ),
    );
  }
}
