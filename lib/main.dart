import 'package:flutter/material.dart';
import 'package:pm_sem2_widgets_flutter/features/presentation/pages/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pantalla Widgets Básicos',
      home: HomeScreenPage(),
    );
  }
}
