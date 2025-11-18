import 'dart:math';
import 'package:flutter/material.dart';

class Main3 extends StatefulWidget {
  const Main3({super.key});

  @override
  State<Main3> createState() => _Main3State();
}

class _Main3State extends State<Main3> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  late int _secretNumber;
  int _attempts = 0;
  String _message = '';

  @override
  void initState() {
    super.initState();
    _generateNewNumber();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _generateNewNumber() {
    setState(() {
      _secretNumber = Random().nextInt(101); // 0..100
      _attempts = 0;
      _message = '';
      _controller.clear();
    });
  }

  void _validateGuess() {
    final guess = int.tryParse(_controller.text);

    setState(() {
      if (guess == null) {
        _message = 'Introduce un número válido.';
        _controller.clear();
        _focusNode.requestFocus();
        return;
      }

      _attempts++;

      if (guess < _secretNumber) {
        _message = 'El número es más grande.';
      } else if (guess > _secretNumber) {
        _message = 'El número es más pequeño.';
      } else {
        _message = '¡Has acertado!';
      }

      _controller.clear();
      _focusNode.requestFocus();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main3')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: 340,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 6,
                  color: Color.fromRGBO(0, 0, 0, 0.08),
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Adivina el número secreto',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 16),

                SizedBox(
                  width: double.infinity,
                  child: TextField(
                    controller: _controller,
                    focusNode: _focusNode,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Número (0-100)',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: _validateGuess,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF3A4F7A),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text('Validar'),
                      ),
                    ),
                    const SizedBox(width: 10),
                    TextButton(
                      onPressed: _generateNewNumber,
                      child: const Text('Nuevo número'),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                Text('Intentos: $_attempts', style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 6),
                Text(_message, style: const TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
