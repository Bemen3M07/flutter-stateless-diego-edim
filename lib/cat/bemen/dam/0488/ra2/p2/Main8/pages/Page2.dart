import 'package:flutter/material.dart';
import 'Statefull/Main1.dart';
import 'Statefull/Main2.dart';
import 'Statefull/Main3.dart';
import 'Statefull/Main4.dart';
import 'Statefull/Main5.dart';
import 'Statefull/Main6.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          // Botones para acceder a Main1..Main6
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
       child: Text('Pagina Stateful ^ ^'),
      ),
    );
  }
}
