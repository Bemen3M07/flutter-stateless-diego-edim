import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  
  @override
  State<MainApp> createState() => _MainAppState();
}

  
class Producto {
  final String nombre;
  final int cantidad;

  Producto({
    required this.nombre,
    required this.cantidad,
  });
}

class _MainAppState extends State<MainApp> {
  final TextEditingController _controler1 = TextEditingController();
  final TextEditingController _controler2 = TextEditingController();
  List<Producto> productos = []; // llista de productos

// variables de cambios
void _updateMessage() {
  setState(() {
    final producto = Producto(
      nombre: _controler1.text,
      cantidad: int.parse(_controler2.text),
    );

    productos.add(producto);
    _controler1.clear();
    _controler2.clear();
  });
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center , 
            children: [
              
              // Cuadro de texto
              Container(
                width: 350,
                padding: EdgeInsets.all(16), 
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 129, 87, 202), 
                  borderRadius: BorderRadius.circular(12), // bordes redondeados
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // nombre
                    TextField(
                      controller: _controler1, // input que recibe el texto
                      decoration: InputDecoration(
                        labelText: 'Nombre',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),

                    const SizedBox(height: 20), 

                    // cantidad
                    TextField(
                      controller: _controler2, // input que recibe el texto
                      decoration: InputDecoration(
                        labelText: 'Cantidad',
                        hintText: 'Solo numeros',
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
                        backgroundColor: const Color.fromARGB(255, 22, 151, 43),
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
              
              // contenedor de texto
              Expanded(
                child: ListView(
                  children: productos.map((p) => Card(
                  elevation: 3,
                  color: const Color.fromARGB(255, 144, 145, 209),
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    title: Text(p.nombre, style: TextStyle(fontWeight:  FontWeight.bold) ),
                    subtitle: Text('Cantidad: ${p.cantidad}'),
                  ),
                )).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
