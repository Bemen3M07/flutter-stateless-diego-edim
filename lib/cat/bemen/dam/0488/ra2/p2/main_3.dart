import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NumeroSecret(),
    );
  }
}

class NumeroSecret extends StatefulWidget {
  @override
  State<NumeroSecret> createState() => _NumeroSecretState();
}

class _NumeroSecretState extends State<NumeroSecret> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode =FocusNode();

  late int _secretNumber;
  int _attempts = 0;
  String _message = '';

  @override
  void initState() {
    super.initState();
    _generateNewNumber();
  }

  void _generateNewNumber() {
    _secretNumber = Random().nextInt(101);
    _attempts = 0;
    _message = '';
    _controller.clear();
  }

  void _validateGuess() {
    final guess = int.tryParse(_controller.text);

    setState(() {
      if (guess == null) {
        _message = 'Introdueix un número vàlid.';
        _controller.clear();
        _focusNode.requestFocus();
        return;
      }

      _attempts++;

      if (guess < _secretNumber) {
        _message = 'El número que busques és més gran.';
      } else if (guess > _secretNumber) {
        _message = 'El número que busques és més petit.';
      } else {
        _message = 'Has encertat!';
      }

      _controller.clear();
      _focusNode.requestFocus();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Endevina el número secret',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              TextField(
                controller: _controller,
                focusNode: _focusNode,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              ElevatedButton(
                onPressed: _validateGuess,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3A4F7A),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text('Validar'),
              ),

              const SizedBox(height: 10),

              Text('Intents: $_attempts'),

              const SizedBox(height: 5),

              Text(_message),

              const SizedBox(height: 10),

              TextButton(
                onPressed: _generateNewNumber,
                child: const Text('Nou número'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
