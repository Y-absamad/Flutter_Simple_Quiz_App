import 'package:flutter/material.dart';

class Answerfeedbackmanager {
  final List<Padding> _answersResult = [];

  List<Padding> get answersResult => _answersResult;

  void addIcon(bool isCorrect) {
    _answersResult.add(
       Padding(
        padding: const EdgeInsets.all(5),
        child: Icon(
          isCorrect ? Icons.thumb_up : Icons.thumb_down,
          color: isCorrect ? Colors.green : Colors.red,
        ),
      ),
    );
  }

  void resetFeedback() {
    _answersResult.clear();
  }
}
