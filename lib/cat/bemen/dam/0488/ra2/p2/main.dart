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
  List<String> items = []; // lista que guardará los textos
  // variables de cambios
  void _updateMessage() {
    setState(() {
                            items.add(_controller.text); // agregamos el texto a la lista
                            _controller.clear(); // limpiamos el campo de texto
                          });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              // Cuadro de texto
              Container(
                width: 350,
                padding: EdgeInsets.all(16), // opcional, para separar los campos del borde
                decoration: BoxDecoration(
                  color: Colors.blueGrey, // color de fondo del container
                  borderRadius: BorderRadius.circular(12), // opcional, bordes redondeados
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // nombre
                    TextField(
                      controller: _controller, // input que recibe el texto
                      decoration: InputDecoration(
                        labelText: 'Nombre',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),

                    const SizedBox(height: 20), // espacio entre los campos

                    // cantidad
                    TextField(
                      controller: _controller, // input que recibe el texto
                      decoration: InputDecoration(
                        labelText: 'Cantidad',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),

                    const SizedBox(height: 20),
              
                    // boton
                    ElevatedButton(
                      onPressed: _updateMessage,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 78, 168, 93),
                      ),
                      child: const Text("añadir producto", // texto del boton
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
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
              Expanded(
              child: ListView(
                children: items.map((item) => Text(item)).toList(),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
