import 'package:flutter/material.dart';
import 'questionManager .dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'examPage.dart';

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
          child: Exampage(),
        ),
      ),
    );
  }
}
