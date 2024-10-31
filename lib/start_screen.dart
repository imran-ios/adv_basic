import 'package:flutter/material.dart';
import 'home_page.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
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
              OutlinedButton(
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: const Text("START QUIZ"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
