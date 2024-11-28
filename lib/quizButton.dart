import 'package:flutter/material.dart';

class Quizbutton extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color backgroundColor;
  final Function() onPressed;

  const Quizbutton({
    super.key,
    required this.text,
    required this.fontSize,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40 , vertical: 12),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, color: Colors.white),
      ),
    );
  }
}
