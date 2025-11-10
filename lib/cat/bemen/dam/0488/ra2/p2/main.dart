import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Ingrese su nombre',
                ),
              ),
              ElevatedButton(
              onPressed: null,
              style: ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll(Color.fromARGB(255, 78, 168, 93)),
              ),
              child: Text("texto", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),), 
              ),
            ]
          ),
        ),
      ),
    );
  }
}
