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
    // Lista de nombres
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

    // Cuerpo del mensaje
    const body =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac vestibulum nunc.";

    // Llista de missatges generats aleatòriament
    final random = Random();
    final messages = List.generate(100, (index) { 
      return Message( // consigue un nombre aleatorio
        names[random.nextInt(names.length)],
        body,
      );
    });

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Missatges')),
        body: ListView.builder(
          itemCount: messages.length,
          itemBuilder: (context, index) { // metodo lamba
            final msg = messages[index];
            return Card( // crea las cartas con la informacion
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // separacion para dentro de las tarjetas
              child: ListTile(
                title: Text(msg.author, style: const TextStyle(fontWeight: FontWeight.bold)), // nombre del autor aleatorio
                subtitle: Text(msg.body), // mensaje fijo 
              ),
            );
          },

        ),
        
        // boton que no hace nada (su funcion seria añadir mas cartas con informacion si estuviera configurado)
        floatingActionButton: FloatingActionButton( 
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
