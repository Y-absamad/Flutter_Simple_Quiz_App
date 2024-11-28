// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_simple_quiz_app/answerFeedbackManager.dart';
import 'package:flutter_simple_quiz_app/app_bar.dart';
import 'package:flutter_simple_quiz_app/questionDisplay.dart';
import 'package:flutter_simple_quiz_app/questionManager%20.dart';
import 'package:flutter_simple_quiz_app/questionRepository.dart';
import 'package:flutter_simple_quiz_app/quizButton.dart';

class Exampage extends StatefulWidget {
  const Exampage({super.key});

  @override
  State<Exampage> createState() => _ExampageState();
}

class _ExampageState extends State<Exampage> {
  final QuestionRepository questionRepository = QuestionRepository();
  late final QuestionManager questionManager;
  late final Answerfeedbackmanager answerfeedbackmanager;

  @override
  void initState() {
    super.initState();
    questionManager = QuestionManager(questionRepository);
    answerfeedbackmanager = Answerfeedbackmanager(
        context: context, questionManager: questionManager);
  }

  void handleAnswer(bool userpicked) {
    setState(() {
      bool isCorrect = questionManager.checkAnswer(userpicked);

      if (isCorrect) {
        questionManager.incrementScore();
      }

      if (questionManager.isFinished()) {
        answerfeedbackmanager.showEndDialog(() {
          setState(() {
            questionManager.reset();
          });
        });
      }
      

      answerfeedbackmanager.showAnswerFeedbackDialog(isCorrect, () {
        setState(() {
          if (!questionManager.isLastQusetion()) {
            questionManager.nextQusetion();
          }
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(184, 11, 44, 97),
        appBar: const CustomAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              QuestionDisplay(questionManager: questionManager),
              Quizbutton(
                text: 'True',
                fontSize: 33,
                backgroundColor: Colors.green,
                onPressed: () => handleAnswer(true),
              ),
              const SizedBox(height: 20),
              Quizbutton(
                text: 'False',
                fontSize: 33,
                backgroundColor: Colors.red,
                onPressed: () => handleAnswer(false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
