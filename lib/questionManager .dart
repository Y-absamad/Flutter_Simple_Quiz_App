import 'package:flutter_simple_quiz_app/questionRepository.dart';

import 'question.dart';

class QuestionManager {
  final int _currentQusetionIndex = 0;
  //int _scor = 0;
  final QuestionRepository _questionRepository;


  QuestionManager(this._questionRepository);

  String get text => _questionRepository.getQuestion(_currentQusetionIndex).text;

  String get imagePath => _questionRepository.getQuestion(_currentQusetionIndex).imagePath;

  bool get answer => _questionRepository.getQuestion(_currentQusetionIndex).answer;
  
}
