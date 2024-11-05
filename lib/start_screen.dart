import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(
    this.satrtQuiz, {
    super.key,
  });

  final void Function() satrtQuiz;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 84, 3, 98),
            Color.fromARGB(255, 206, 78, 229),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/quiz-logo.png',
                width: 200,
                height: 200,
                color: Colors.white.withOpacity(0.6),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Learn Flutter the fun way!",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(
                height: 16,
              ),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                onPressed: satrtQuiz,
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text("START QUIZ"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
