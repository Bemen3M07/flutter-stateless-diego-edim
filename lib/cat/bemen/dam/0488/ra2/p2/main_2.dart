import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String _message = "";
  final TextEditingController _controller = TextEditingController(); 
  Color backgroundColor = Colors.white;

  // variables de cambios
  void _updateMessage() {
    setState(() {
      _message = "Mensaje:  ${_controller.text}";
      backgroundColor = Colors.grey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              // Cuadro de texto
              SizedBox( 
                width: 350,
                child: TextField(
                  controller: _controller, // input que recibe el texto
                   decoration: InputDecoration( // añade decoracion al text Field
                    labelText: 'Mensaje', // nombre de la caja
                    hintText: 'Ingresa un mensaje', // texto del intentior
                    border: OutlineInputBorder(), // le añade bordes a toda la caja no solo por la parte de abajo
                    filled: true, // le da un color al interior
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),

              // ////////////////////////
              const SizedBox(height: 20),
              
              // boton
              ElevatedButton(
                onPressed: _updateMessage,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 78, 168, 93),
                ),
                child: const Text("Enviar mensaje", // texto del boton
                  style: TextStyle(color: Colors.black),
                ),
              ),

              // ////////////////////////
              const SizedBox(height: 20),
              
              // contenedor de texto
              Container(
                padding: const EdgeInsets.all(25),
                width: 300,
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
      ),
    );
  }
}
