import 'package:flutter/material.dart';
import 'package:flutter_simple_quiz_app/dialog_helper.dart';
import 'package:flutter_simple_quiz_app/questionManager%20.dart';

class Answerfeedbackmanager {
  final BuildContext context;
  final QuestionManager questionManager;

  Answerfeedbackmanager({required this.context, required this.questionManager});

  void showEndDialog(VoidCallback onReset) {
    DialogHelper.showCustomDialog(
      context: context,
      title: 'The Quiz is Over',
      textChild: 'Retry',
      contentt: 'You answered ${questionManager.score} questions correctly',
      backgroundColor: Colors.grey,
      onPressed: () {
        Navigator.of(context).pop();
        onReset();
      },
    );
  }

  void showAnswerFeedbackDialog(bool isCorrect, VoidCallback onNext) {
    String title = isCorrect
        ? 'Well done! Your answer is correct.'
        : 'Sorry, your answer is incorrect.';
    String textChild = 'Next';

    DialogHelper.showCustomDialog(
      context: context,
      title: title,
      textChild: textChild,
      backgroundColor: isCorrect
          ? Colors.lightGreen
          : Colors.red,
      onPressed: () {
        Navigator.of(context).pop();
        onNext();
      },
    );
  }
}
