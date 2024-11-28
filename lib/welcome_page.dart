import 'package:flutter/material.dart';
import 'package:flutter_simple_quiz_app/quizButton.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 29, 30, 51),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _text(
                text: "Welcome to Our Game!",
                size: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 16),
              _text(
                text:
                    "Get ready for the challenge and start your adventure now. Press the button below to begin!!",
                size: 18,
                color: Colors.white70,
                fontWeight: FontWeight.normal,
              ),
              const SizedBox(height: 30),
              Quizbutton(
                text: ' Start Game',
                fontSize: 20,
                backgroundColor: const Color.fromARGB(255, 235, 21, 85),
                onPressed: () => {
                  Navigator.pushNamed(context, '/examPage'),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text _text({
    required String text,
    required double size,
    required Color color,
    required FontWeight fontWeight,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
      textAlign: TextAlign.center,
    );
  }
}
