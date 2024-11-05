import 'package:adv_basic/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionScreeen extends StatefulWidget {
  @override
  State<QuestionScreeen> createState() => _QuestionScreeen();
}

class _QuestionScreeen extends State<QuestionScreeen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Queston Screen",
          style: TextStyle(
              color: Color.fromARGB(255, 209, 143, 244),
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        AnswerButton(onPressed: () {}, btnTitle: "data 1"),
        AnswerButton(onPressed: () {}, btnTitle: "data 2"),
        AnswerButton(onPressed: () {}, btnTitle: "data 3"),
        AnswerButton(onPressed: () {}, btnTitle: "data 4"),
      ],
    ));
  }
}
