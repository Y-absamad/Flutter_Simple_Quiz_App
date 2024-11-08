import 'package:flutter/material.dart';
import 'package:flutter_simple_quiz_app/app_bar.dart';

import 'examPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 3, 31, 39),
          appBar: CustomAppBar(),
          body: Exampage(),
        ),
      ),
    );
  }
}
