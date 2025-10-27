import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      body: Align(
        alignment: Alignment.topLeft, // coloca todo arriba a la izquierda
        child: Column(
            children: [
              const Text(
                'Esto es un recurso String',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 10), // espacio entre texto e imagen
              Image.asset('assets/senora.jpg', width: 250, height: 250),
            ],
          ),
        ),
      ),
    );
}
}
