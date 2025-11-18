import 'dart:math';
import 'package:flutter/material.dart';

class Message {
  final String author;
  final String body;

  Message(this.author, this.body);
}
class Main6 extends StatelessWidget {
  const Main6({super.key});

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
        "Flutter Stateless Diego y Edim. Barra de busqueda";

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

        // PARTE AÑADIDA DEL EJERCICIO 6

        // indicamos que el boton se quede abajo de la pagina bloqueado para que se siga mostrando incluso cuando bajamos hacia abajo
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked, 
        bottomNavigationBar: BottomNavigationBar(
          items: const [ // conjunto de botones de navegacion 
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inici"), // boton de inicio sin funcion
            
            BottomNavigationBarItem(icon: Icon(Icons.message), label: "Missatges"), //boton de mensajes sin funcion
            
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Ajustos"), // boton de ajustes sin funcion
          ],
        ),
      ),
    );
  }
}
