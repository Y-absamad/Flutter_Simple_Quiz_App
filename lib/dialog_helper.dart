import 'package:flutter/material.dart';

class DialogHelper {
  static void showCustomDialog({
    required BuildContext context,
    required String title,
    required String textChild,
    required VoidCallback onPressed,
    required Color backgroundColor,
    String? contentt,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext content) {
        return AlertDialog(
          titlePadding: const EdgeInsets.only(top: 55),
          backgroundColor: backgroundColor,
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          content: contentt == null ? const Text('') : Text(contentt),
          actions: [
            MaterialButton(
              onPressed: onPressed,
              child: Text(textChild),
            )
          ],
        );
      },
    );
  }
}
