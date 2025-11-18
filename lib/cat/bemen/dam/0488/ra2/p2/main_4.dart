import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final random = Random();

  int dado1 = 0;
  int dado2 = 0;


  List<String> imagenes = [
    "assets/dado-1.png",
    "assets/dado-2.png",
    "assets/dado-3.png",
    "assets/dado-4.png",
    "assets/dado-5.png",
    "assets/dado-6.png",
  ];

  void _updateMessage() {
    setState(() {
      dado1 = random.nextInt(6);
      dado2 = random.nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background-dice.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // ===== JACKPOT =====
              if (dado1 == dado2) ...[
                Image.asset(
                  "assets/JackPot.png",
                  width: 250,
                ),
                const SizedBox(height: 20),
              ],

              // ===== CONTENEDOR DE DADOS =====
              Container(
                padding: const EdgeInsets.all(16),
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(imagenes[dado1], width: 100),
                    const SizedBox(width: 40),
                    Image.asset(imagenes[dado2], width: 100),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: _updateMessage,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 22, 151, 43),
                ),
                child: const Text(
                  "Lanzar dados",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
