// ignore_for_file: unnecessary_statements

import 'package:flutter/material.dart';
import 'dart:math';
// ignore: unused_import
import 'question.dart';
import 'quiz_brain.dart';

void main() => runApp(Quizzler());
class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // List<String> question = [
  //   'You can lead a cow down stairs but not up stairs.',
  //   'Approximately one quarter of human bones are in the feet.',
  //   'A slug\'s blood is green.'
  // ];

  // List  answers =[
  //   'false',
  //   'true',
  //   'true'
  // ];

  int questionnumber = 0;

  QuizBrain quizbrain = QuizBrain();
  
 
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizbrain.questionBank[questionnumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            // ignore: deprecated_member_use
            child: FlatButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text(
                  'True',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  // ignore: unused_local_variable
                  bool correctanswer =
                     quizbrain. questionBank[questionnumber].questionAnswer;

                  if (correctanswer = true) {
                    print('true');
                  } else {
                    print('false answer ');
                  }
                  setState(() {
                    questionnumber = Random().nextInt(2) + 1;
                  });

                  print('true pressed');
                }),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            // ignore: deprecated_member_use
            child: FlatButton(
                color: Colors.red,
                textColor: Colors.white,
                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                // ignore: duplicate_ignore
                onPressed: () {
                  // ignore: unused_local_variable
                  bool correctanswer =
                      quizbrain.questionBank[questionnumber].questionAnswer;

                  if (correctanswer = false) {
                    print('true');
                  } else {
                    print('false  answer');
                  }
                  setState(() {
                    questionnumber = Random().nextInt(2) + 1;
                  });

                  print('false pressed');
                  
                 
                }),
          ),
        ),
        Row()
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
