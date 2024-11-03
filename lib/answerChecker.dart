import 'package:flutter_simple_quiz_app/questionManager%20.dart';

class Answerchecker {
  final QuestionManager _questionManager;
  Answerchecker(this._questionManager);

  bool checkAnswer(bool userPicked){
    return userPicked == _questionManager.answer;
  }
}