import 'package:flutter_simple_quiz_app/questionRepository.dart';

class QuestionManager {
  int _currentQusetionIndex = 0;
  int _score = 0;
  final QuestionRepository _questionRepository;

  QuestionManager(this._questionRepository);

  String get text =>
      _questionRepository.getQuestion(_currentQusetionIndex).text;

  String get imagePath =>
      _questionRepository.getQuestion(_currentQusetionIndex).imagePath;

  bool get answer =>
      _questionRepository.getQuestion(_currentQusetionIndex).answer;

  void incrementScore() => _score++;

  bool isFinished() =>
      _currentQusetionIndex == _questionRepository.totalQuestions - 1;

  int get score => _score;

  int get currentQusetionIndex => _currentQusetionIndex;

  void reset() {
    _currentQusetionIndex = 0;
    _score = 0;
  }

  void nextQusetion() => _currentQusetionIndex++;

  bool isLastQusetion() {
    return _questionRepository.totalQuestions == _currentQusetionIndex + 1;
  }

  bool checkAnswer(bool userPicked) {
    return userPicked == answer;
  }
}
