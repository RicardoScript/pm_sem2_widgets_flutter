import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ColorButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 28),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: const Text(
        "Cambiar color",
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
