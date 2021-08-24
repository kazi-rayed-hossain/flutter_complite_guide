import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// ignore: must_be_immutable
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  // ignore: prefer_typing_uninitialized_variables
  var questionIndex;

  Quiz(
      {Key? key, required this.questions,
      required this.answerQuestion,
      @required this.questionIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}