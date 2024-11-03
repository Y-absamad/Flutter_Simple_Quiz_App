import 'package:flutter/material.dart';
import 'package:flutter_simple_quiz_app/questionManager%20.dart';

class QuestionDisplay extends StatelessWidget {
  
  final QuestionManager questionManager;

  const QuestionDisplay({super.key, required this.questionManager});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Column(
        children: [
          Image.asset(questionManager.imagePath),
          const SizedBox(height: 20),
          Text(
            questionManager.text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
