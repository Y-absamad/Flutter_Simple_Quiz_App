import 'package:flutter/material.dart';
import 'package:flutter_simple_quiz_app/questionManager%20.dart';
import 'package:flutter_simple_quiz_app/questionRepository.dart';

class Exampage extends StatefulWidget {
  const Exampage({super.key});

  @override
  State<Exampage> createState() => _ExampageState();
}

class _ExampageState extends State<Exampage> {
  late final QuestionManager questionManager;
  late final QuestionRepository questionRepository;

  List<Padding> anserList = [];
  int rightAnswer = 0;

  void checkAnswer(bool whatUserpicked) {
    bool correctAnswer = appBrain.answer;
    setState(() {
      if (whatUserpicked == correctAnswer) {
        rightAnswer++;
        anserList.add(
          const Padding(
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.thumb_up,
              color: Colors.green,
            ),
          ),
        );
      } else {
        anserList.add(
          const Padding(
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.thumb_down,
              color: Colors.red,
            ),
          ),
        );
      }
      if (appBrain.isFinished()) {
        Alert(
          context: context,
          //type: AlertType.error,
          title: "Finished Questions",
          desc: "you answered in $rightAnswer from 4",
          buttons: [
            DialogButton(
              onPressed: () => Navigator.pop(context),
              width: 120,
              child: const Text(
                "Start agin",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ).show();
      appBrain.reset();  
      anserList = [];
      rightAnswer = 0;
      } else {
        appBrain.nextQusetion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {

}
}