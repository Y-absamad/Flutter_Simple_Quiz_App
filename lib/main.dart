import 'package:flutter/material.dart';
import 'app_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

AppBrain appBrain = AppBrain();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey,
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: ExamPage(),
        ),
      ),
    );
  }
}

class ExamPage extends StatefulWidget {
  const ExamPage({super.key});

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(children: anserList),
        Expanded(
          flex: 6,
          child: Column(
            children: [
              //Image.asset(appBrain.qusetions[numOfQusetionsAndIamge].imagePath),
              //Image.asset(appBrain.getQuestionIamge()),
              Image.asset(appBrain.imagePath),
              const SizedBox(
                height: 20,
              ),
              Text(
                //appBrain.qusetions[numOfQusetionsAndIamge].qusetionText,
                //appBrain.getQuestionNumber(),
                appBrain.qusetionText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              onPressed: () {
                checkAnswer(true);
                setState(() {
                  //appBrain.nextQusetion();
                });
              },
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.green),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))))),
              child: const Text(
                'True',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              onPressed: () {
                checkAnswer(false);
                setState(() {
                  //appBrain.nextQusetion();
                });
              },
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))))),
              child: const Text(
                'false',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
