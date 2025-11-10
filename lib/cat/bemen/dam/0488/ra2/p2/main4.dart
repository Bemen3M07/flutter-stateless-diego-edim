import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorChangerPage(),
    );
  }
}

class ColorChangerPage extends StatefulWidget {
  @override
  _ColorChangerPageState createState() => _ColorChangerPageState();
}

class _ColorChangerPageState extends State<ColorChangerPage> {
  // Color inicial de fondo
  Color backgroundColor = Colors.white;

  // Función para cambiar el color
  void changeColor() {
    setState(() {
      // Cambiar el color aleatoriamente
      backgroundColor = backgroundColor == Colors.white ? Colors.blue : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text("Cambiar color de fondo"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: changeColor,
          child: Text("Cambiar color"),
        ),
      ),
    );
  }
}
