import 'package:flutter/material.dart';
import 'package:flutter_simple_quiz_app/questionManager%20.dart';

class QuestionDisplay extends StatelessWidget {
  final QuestionManager questionManager;

  const QuestionDisplay({super.key, required this.questionManager});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Column(
        children: [
          SizedBox(
            height: 250,
            width: 350,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                questionManager.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            questionManager.text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w200,
              color: Colors.white,
              fontFamily: 'Myfont',
            ),
          ),
        ],
      ),
    );
  }
}
