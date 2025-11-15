import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final Color currentColor;

  const TitleText({super.key, required this.currentColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Bienvenidos a Flutter Widgets",
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: currentColor,
      ),
    );
  }
}
