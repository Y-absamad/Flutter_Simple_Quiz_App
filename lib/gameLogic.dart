import 'package:flutter_simple_quiz_app/questionManager%20.dart';
import 'package:flutter_simple_quiz_app/question.dart';

class Gamelogic {
  int qusetionNumber;
  final List<Question> qusetions;

  Gamelogic({required this.qusetions , required this.qusetionNumber});

  void nextQusetion() => qusetionNumber < qusetions.length - 1
      ? qusetionNumber++
      : qusetionNumber;

  bool isFinished() => qusetionNumber >= qusetions.length - 1;

  void reset() => qusetionNumber = 0;
}