import 'package:adv_basic/question_screeen.dart';
import 'package:flutter/material.dart';
import 'start_screen.dart';

enum ActiveScreen { startScreen, questionScreen }

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState() => _Quiz();
}

class _Quiz extends State<Quiz> {
  @override
  void initState() {
    super.initState();
    activeScreen = ActiveScreen.startScreen;
  }

  ActiveScreen? activeScreen;

  void switchScreen() {
    setState(() {
      activeScreen = ActiveScreen.questionScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 84, 3, 98),
              Color.fromARGB(255, 206, 78, 229),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: activeScreen == ActiveScreen.startScreen
              ? StartScreen(switchScreen)
              : QuestionScreeen(),
        ),
      ),
    );
  }
}
