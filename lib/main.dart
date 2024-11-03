import 'package:flutter/material.dart';

import 'examPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 237, 152, 152),
          ),
          body: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Exampage(),
          ),
        ),
      ),
    );
  }
}
