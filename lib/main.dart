import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class Contact {
  final String fullName;
  final String email;
  final String phone;

  Contact({
    required this.fullName,
    required this.email,
    required this.phone,
  });
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Objecte creat amb les dades demanades
    final contact = Contact(
      fullName: "Marta Casserres",
      email: "marta@example.com",
      phone: "934748474",
    );

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //imatge rodona
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/marta.jpg'),
              ),

              //Nom
              Text(
                contact.fullName,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              //caixa gris
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email: ${contact.email}"),
                    Text("Telèfon: ${contact.phone}"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
