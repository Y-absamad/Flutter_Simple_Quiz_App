import 'package:flutter_simple_quiz_app/question.dart';

class QuestionRepository {
  
  final List<Question> qusetions = [
    Question(
      text: 'Venice, Italy, is famous for its canals instead of roads.',
      imagePath: 'images/image-1.jpg',
      answer: true,
    ),
    Question(
      text: 'A blue whale\'s tongue can weigh as much as an elephant.',
      imagePath: 'images/image-2.jpg',
      answer: true,
    ),
    Question(
      text: 'The largest country in the world by area is Canada.',
      imagePath: 'images/image-3.jpg',
      answer: false,
    ),
    Question(
      text: 'New York is the capital of the United States.',
      imagePath: 'images/image-4.jpg',
      answer: false,
    ),
    Question(
      text: 'The human body has 206 bones.',
      imagePath: 'images/image-5.jpg',
      answer: true,
    ),
    Question(
      text: 'Mount Everest is the tallest mountain in the world.',
      imagePath: 'images/image-6.jpg',
      answer: true,
    ),
    Question(
      text: 'The Great Wall of China is over 13,000 miles long.',
      imagePath: 'images/image-7.jpg',
      answer: true,
    ),
    Question(
      text: 'The Amazon River is the longest river in the world.',
      imagePath: 'images/image-8.jpg',
      answer: false,
    ),
    Question(
      text: 'The Statue of Liberty was a gift from Germany to the United States.',
      imagePath: 'images/image-9.jpg',
      answer: false,
    ),
    Question(
      text: 'Horses sleep standing up.',
      imagePath: 'images/image-10.jpg',
      answer: true,
    ),
    
  ];
  
  Question getQuestion(int index) => qusetions[index];

  int get totalQuestions => qusetions.length;
}
