import 'package:flutter_simple_quiz_app/question.dart';

class QuestionRepository {
  
  final List<Question> qusetions = [
    Question(
      text: 'yousefsdfdsf',
      imagePath: 'images/image-1.jpg',
      answer: true,
    ),
    Question(
      text: 'Ahmedsdffsfdf',
      imagePath: 'images/image-2.jpg',
      answer: true,
    ),
    Question(
      text: 'Mohmmed',
      imagePath: 'images/image-3.jpg',
      answer: false,
    ),
    Question(
      text: 'Ali',
      imagePath: 'images/image-4.jpg',
      answer: false,
    ),
  ];
  
  Question getQuestion(int index) => qusetions[index];

  int totalQuestions() => qusetions.length;
}
