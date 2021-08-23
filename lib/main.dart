import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void answerQuestion() {
    print('ans chosen');
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
            const Text('the question!'),
            // ignore: deprecated_member_use
            RaisedButton(child: const Text('Answer 1'), onPressed: answerQuestion),
            // ignore: deprecated_member_use
            RaisedButton(child: const Text('Answer 2'), onPressed: answerQuestion),
            // ignore: deprecated_member_use
            RaisedButton(child: const Text('Answer 3'), onPressed: answerQuestion),
            // ignore: deprecated_member_use
            RaisedButton(child: const Text('Answer 4'), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
