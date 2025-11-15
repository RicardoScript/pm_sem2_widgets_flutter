import 'dart:math';
import 'package:flutter/material.dart';
import 'package:pm_sem2_widgets_flutter/features/presentation/widgets/tittle_text.dart';
import '../../widgets/flutter_image.dart';
import '../../widgets/icon.dart';
import '../../widgets/color_button.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  Color currentColor = Colors.blue;

  Color randomColor() {
    return Color.fromARGB(
      255,
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets Basicos en Flutter"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleText(currentColor: currentColor),
            const SizedBox(height: 20),

            const FlutterImage(),
            const SizedBox(height: 20),

            const HappyIcon(),
            const SizedBox(height: 30),

            ColorButton(
              onPressed: () {
                setState(() {
                  currentColor = randomColor();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
