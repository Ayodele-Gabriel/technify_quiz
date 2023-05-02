import 'package:flutter/material.dart';
import 'package:technify_quiz/flutter/flutter_quiz.dart';
import 'package:technify_quiz/html/html_quiz_home.dart';

import 'flutter/flutter_quiz_home.dart';

class SelectQuizType extends StatelessWidget {
  const SelectQuizType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 300.0,
          ),
          Text(
            'Please select your preffered quiz track:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  FlutterQuizHome()),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) => Colors.blueGrey),
            ),
            child: Text('Flutter Quiz'),
          ),
          SizedBox(
            width: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  HTMLQuizHome()),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) => Colors.blueGrey),
            ),
            child: Text('HTML Quiz'),
          ),
        ],
      ),
    );
  }
}