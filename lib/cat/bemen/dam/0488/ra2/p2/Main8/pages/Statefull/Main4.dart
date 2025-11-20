import 'package:flutter/material.dart';
import 'dart:math';

class Main4 extends StatefulWidget {
  const Main4({super.key});

  @override
  State<Main4> createState() => _Main4State();
}

class _Main4State extends State<Main4> {
  final random = Random();

  int dado1 = 0;
  int dado2 = 0;

  List<String> imagenes = [
    "assets/dice1.png",
    "assets/dice2.png",
    "assets/dice3.png",
    "assets/dice4.png",
    "assets/dice5.png",
    "assets/dice6.png",
  ];

  void _lanzarDados() {
    setState(() {
      dado1 = random.nextInt(6);
      dado2 = random.nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main4')),
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
            if (dado1 == dado2) ...[
              Image.asset(
                "assets/JackPot.png",
                width: 250,
              ),
              const SizedBox(height: 20),
            ],

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
              onPressed: _lanzarDados,
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
    );
  }
}
