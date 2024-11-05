import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.onPressed, required this.btnTitle});
  final void Function() onPressed;
  final String btnTitle;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple, foregroundColor: Colors.white),
      onPressed: onPressed,
      child: Text(btnTitle),
    );
  }
}
