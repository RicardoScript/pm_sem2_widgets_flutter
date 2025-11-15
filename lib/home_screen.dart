import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color currentColor = Colors.blue; // Color inicial

  // Función para generar colores aleatorios
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
        title: const Text("Widgets Básicos en Flutter"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Texto
            Text(
              "Bienvenidos a Flutter Widgets",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: currentColor,
              ),
            ),

            const SizedBox(height: 20),

            // Imagen
            Image.asset(
              "assets/images/flutter_logo.png",
              width: 150,
            ),

            const SizedBox(height: 20),

            // Carita feliz 
            const Icon(
              Icons.tag_faces,
              color: Colors.orange,
              size: 60,
            ),

            const SizedBox(height: 30),

            // Botón que cambia colores
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentColor = randomColor();
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 28),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "Cambiar color",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
