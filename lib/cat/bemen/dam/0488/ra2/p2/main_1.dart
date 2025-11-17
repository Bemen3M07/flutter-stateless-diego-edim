
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  @override
  State<Screen> createState() => _GoodScreenState();
}

class _GoodScreenState extends State<Screen> {
  String message = 'Good ?!';   // Missatge inicial

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),                         //espai

            ElevatedButton(                                     // Botó 1
              onPressed: () {
                setState(() {
                  message = 'Good morning';
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3A4F7A),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text('Morning'),
            ),

            const SizedBox(height: 10),                         //espai

            ElevatedButton(                                     // Botó 2
              onPressed: () {
                setState(() {
                  message = 'Good night';
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3A4F7A),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text('Night'),
            ),
          ],
        ),
      ),
    );
  }
}
