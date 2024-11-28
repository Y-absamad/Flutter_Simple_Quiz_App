import 'package:flutter/material.dart';
import 'package:flutter_simple_quiz_app/welcome_page.dart';

import 'examPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const WelcomePage(),
        '/examPage': (context) => const Exampage(),
      },
    );
  }
}
