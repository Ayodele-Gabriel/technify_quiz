import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:technify_quiz/main.dart';

class FlutterQuizHome extends StatefulWidget {
  const FlutterQuizHome({Key? key}) : super(key: key);

  @override
  State<FlutterQuizHome> createState() => _FlutterQuizHomeState();
}

class _FlutterQuizHomeState extends State<FlutterQuizHome> {
  List<Icon> scoreBoard = [];

  void viewReply(bool selectedAnswer) {
    bool actualReplies = flutterQuiz.findInquiryReply();

    setState(() {
      if (flutterQuiz.theEnd() == true) {
        Alert(
          context: context,
          title: scoreBoard.length.toString(),
          desc: 'You\'ve Reached The End Of the Questions',
        ).show();
        flutterQuiz.startOver();
        scoreBoard = [];
      } else {
        if (selectedAnswer == actualReplies) {
          scoreBoard.add(
            const Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          scoreBoard.add(
            const Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        flutterQuiz.otherInquiry();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      flutterQuiz.findInquiryLetters(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    child: const Text(
                      'True',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      viewReply(true);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    child: const Text(
                      'False',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      viewReply(false);
                    },
                  ),
                ),
              ),
              // Row(
              //   children: scoreBoard,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
