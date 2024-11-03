// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_simple_quiz_app/alertHelper.dart';
import 'package:flutter_simple_quiz_app/answerChecker.dart';
import 'package:flutter_simple_quiz_app/answerFeedbackManager.dart';
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
  late final Answerchecker answerChecker;
  final Answerfeedbackmanager answerfeedback = Answerfeedbackmanager();
  int score = 0;

  @override
  void initState() {
    super.initState();
    questionManager = QuestionManager(questionRepository);
    answerChecker = Answerchecker(questionManager);
  }

  void handleAnswer(bool userpicked) {
    setState(() {
      bool isCorrect = answerChecker.checkAnswer(userpicked);
      answerfeedback.addIcon(isCorrect);

      if (isCorrect) {
        score++;
        questionManager.incrementScore();
      }

      if (!questionManager.isFinished()) {
        questionManager.nextQusetion();
      }else{
        Alerthelper.showAlert(context, questionManager.score);
        questionManager.reset();
        answerfeedback.resetFeedback();
      } 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(children: answerfeedback.answersResult),
        QuestionDisplay(questionManager: questionManager),
        Expanded(
          child: Quizbutton(text: 'True', backgroundColor: Colors.green, onPressed: () => handleAnswer(true)),
        ),
        Expanded(
          child:Quizbutton(text: 'False', backgroundColor: Colors.red, onPressed: () => handleAnswer(false))
        ),
      ],
    );
  }
}
