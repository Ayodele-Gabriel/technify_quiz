import 'package:flutter/material.dart';
import 'package:technify_quiz/flutter/flutter_quiz.dart';
import 'package:technify_quiz/select_quiz_type.dart';

import 'html/html_quiz.dart';

FlutterQuiz flutterQuiz= FlutterQuiz();
HTMLQuiz htmlQuiz = HTMLQuiz();

void main() {
  runApp(const Quizzer());
}

class Quizzer extends StatelessWidget {
  const Quizzer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: SelectQuizType(),
          ),
        ),
      ),
    );
  }
}


