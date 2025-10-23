import 'dart:math';
import 'package:flutter/material.dart';

class Message {
  final String author;
  final String body;

  Message(this.author, this.body);
}

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final names = [
      "Ellison Curry",
      "Briggs Willis",
      "Alexa Murphy",
      "Cameron Berry",
      "Annabelle Villarreal",
      "Nikolai Wiley",
      "Lauryn Morrow",
      "Kyree Hardy",
      "Wells Wilson",
      "Luna Foster",
      "Kayden Taylor",
      "Sofia Mann",
      "Nehemiah Randall",
      "Christina Gordon",
      "Karter Kramer",
      "Hanna Morales",
      "Megan Delarosa",
      "Osiris Johnson",
      "Emma Atkins",
      "Cason McKee",
      "Kori Walls",
      "Larry Shepherd",
    ];

    const body =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac vestibulum nunc.";

    final random = Random();
    final messages = List.generate(100, (index) {
      return Message(
        names[random.nextInt(names.length)],
        body,
      );
    });

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Missatges'),
        ),
        body: ListView.builder(
          itemCount: messages.length,
          itemBuilder: (context, index) {
            final msg = messages[index];
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                title: Text(msg.author,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(msg.body),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inici"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Missatges"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Ajustos"),
          ],
        ),
      ),
    );
  }
}
