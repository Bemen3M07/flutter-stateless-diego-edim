import 'package:flutter/material.dart';

class Producto {
  final String nombre;
  final int cantidad;

  Producto({
    required this.nombre,
    required this.cantidad,
  });
}

class Main6 extends StatefulWidget {
  const Main6({super.key});

  @override
  State<Main6> createState() => _Main6State();
}

class _Main6State extends State<Main6> {
  final TextEditingController _controler1 = TextEditingController();
  final TextEditingController _controler2 = TextEditingController();
  List<Producto> productos = []; // lista que guardará los productos

  void _anadirProducto() {
    final nombre = _controler1.text.trim();
    final cantidadText = _controler2.text.trim();

    if (nombre.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Introduce el nombre del producto')),
      );
      return;
    }

    final cantidad = int.tryParse(cantidadText);
    if (cantidad == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Introduce una cantidad válida (número)')),
      );
      return;
    }

    setState(() {
      productos.add(Producto(nombre: nombre, cantidad: cantidad));
      _controler1.clear();
      _controler2.clear();
    });
  }

  @override
  void dispose() {
    _controler1.dispose();
    _controler2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main6')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Cuadro de texto para añadir producto
            Container(
              width: 350,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 129, 87, 202),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: _controler1,
                    decoration: InputDecoration(
                      labelText: 'Nombre',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),

                  const SizedBox(height: 20),

                  TextField(
                    controller: _controler2,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Cantidad',
                      hintText: 'Solo números',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),

                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: _anadirProducto,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 22, 151, 43),
                    ),
                    child: const Text(
                      "añadir producto",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // lista de productos
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                children: productos
                    .map(
                      (p) => Card(
                        elevation: 3,
                        color: const Color.fromARGB(255, 144, 145, 209),
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          title: Text(p.nombre, style: const TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text('Cantidad: ${p.cantidad}'),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
