import 'package:flutter/material.dart';
import 'Stateless/Main1.dart';
import 'Stateless/Main2.dart';
import 'Stateless/Main3.dart';
import 'Stateless/Main4.dart';
import 'Stateless/Main5.dart';
import 'Stateless/Main6.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Main1()),
              );
            },
            child: const Text('Main1', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Main2()),
              );
            },
            child: const Text('Main2', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Main3()),
              );
            },
            child: const Text('Main3', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Main4()),
              );
            },
            child: const Text('Main4', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Main5()),
              );
            },
            child: const Text('Main5', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Main6()),
              );
            },
            child: const Text('Main6', style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: const Center(
        child: Text('Pagina Stateless ^ ^'),
      ),
    );
  }
}
