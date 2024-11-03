
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Alerthelper {
  static void showAlert(BuildContext context , int score){
  Alert(
          context: context,
          //type: AlertType.error,
          title: "Quiz Finished",
          desc: "You scored $score points.",
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
  }
}