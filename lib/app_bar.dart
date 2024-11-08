import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Quiz App',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontFamily: 'Myfont'
        ),
      ),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(153, 17, 63, 122),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
