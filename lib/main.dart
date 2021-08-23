import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp( MyApp());

class MyApp extends StatefulWidget {
  

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
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
            Text(
              questions[questionIndex],
            ),
            // ignore: deprecated_member_use
            RaisedButton(
                child: const Text('Answer 1'), onPressed: answerQuestion),
            // ignore: deprecated_member_use
            RaisedButton(
                child: const Text('Answer 2'), onPressed: answerQuestion),
            // ignore: deprecated_member_use
            RaisedButton(
                child: const Text('Answer 3'), onPressed: answerQuestion),
            // ignore: deprecated_member_use
            RaisedButton(
                child: const Text('Answer 4'), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
