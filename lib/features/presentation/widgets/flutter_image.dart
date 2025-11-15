import 'package:flutter/material.dart';

class FlutterImage extends StatelessWidget {
  const FlutterImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/flutter_logo.png", width: 150);
  }
}
