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
                backgroundImage: AssetImage('assets/senora.jpg'),
              ),

              //Nom
              Text(
                contact.fullName,
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              //caixa gris
              Center(
                child: Container(
                  width: 220, // 👉 amplada més petita (pots ajustar-ho)
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.email),
                          const SizedBox(width: 8),
                          Text(contact.email),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.phone),
                          const SizedBox(width: 8),
                          Text(contact.phone),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
