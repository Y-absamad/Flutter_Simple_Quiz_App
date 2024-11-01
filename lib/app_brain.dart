import 'question.dart';

class AppBrain {
  int _qusetionNumber = 0;

  // String getQuestionNumber() {
  //   return _qusetions[_qusetionNumber].qusetionText;
  // }

  String get qusetionText => _qusetions[_qusetionNumber].qusetionText;

  // String getQuestionIamge() {
  //   return _qusetions[_qusetionNumber].imagePath;
  // }

  String get imagePath => _qusetions[_qusetionNumber].imagePath;

  // bool getQuestionAnswer() {
  //   return _qusetions[_qusetionNumber].answer;
  // }

  bool get answer => _qusetions[_qusetionNumber].answer;

  void nextQusetion() => _qusetionNumber < _qusetions.length -1 ? _qusetionNumber++ : _qusetionNumber;
  
  bool isFinished() => _qusetionNumber >= _qusetions.length-1;

  void reset() => _qusetionNumber = 0;

  final List<Question> _qusetions = [
    Question(
        qusetionText: 'yousef', imagePath: 'images/image-1.jpg', answer: true),
    Question(
        qusetionText: 'Ahmed', imagePath: 'images/image-2.jpg', answer: true),
    Question(
        qusetionText: 'Mohmmed',
        imagePath: 'images/image-3.jpg',
        answer: false),
    Question(
        qusetionText: 'Ali', imagePath: 'images/image-4.jpg', answer: false),
  ];
}
