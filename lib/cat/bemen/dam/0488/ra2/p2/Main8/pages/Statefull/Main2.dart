import 'package:flutter/material.dart';

class Main2 extends StatefulWidget {
  const Main2({super.key});

  @override
  State<Main2> createState() => _Main2State();
}

class _Main2State extends State<Main2> {
  String _message = "";
  final TextEditingController _controller = TextEditingController();
  Color backgroundColor = Colors.white;

  void _updateMessage() {
    setState(() {
      _message = "Mensaje:  ${_controller.text}";
      backgroundColor = Colors.grey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(title: const Text("Main2")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            // Cuadro de texto
            SizedBox(
              width: double.infinity,
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: 'Mensaje',
                  hintText: 'Ingresa un mensaje',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Botón
            ElevatedButton(
              onPressed: _updateMessage,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 78, 168, 93),
              ),
              child: const Text(
                "Enviar mensaje",
                style: TextStyle(color: Colors.black),
              ),
            ),

            const SizedBox(height: 20),

            // Contenedor del texto
            Container(
              padding: const EdgeInsets.all(25),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                _message,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
