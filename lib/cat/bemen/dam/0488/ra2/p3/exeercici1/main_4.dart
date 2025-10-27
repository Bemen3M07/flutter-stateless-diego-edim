import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class Contact { // creamos la clase que contendra la informacion del contacto
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
    
    final contact = Contact( // indicamos la informacion del objeto contando
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
              // imagen redonda
              const CircleAvatar(
                radius: 50, // indicamos el espacio que ocupa 
                backgroundImage: AssetImage('assets/senora.jpg'), // imagen que tendra de fondo el objeto 
              ),

              //Nombre 
              Text(
                contact.fullName, // llamamos a la clase contact.fullName que contiene la informacion del nombre
                style: const TextStyle( // estilo del texto
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              // caja 
              Center(
                child: Container(
                  width: 220, 
                  // en la linea 58 el EdgeInsets se encarga de aplicar un margen a todos los objetos dentro de la caja para que haya una separacion con los bordes
                  padding: const EdgeInsets.all(16), 
                  decoration: BoxDecoration( 
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [ // email
                          const Icon(Icons.email), // icono de correo (nativo del flutter)
                          const SizedBox(width: 8),
                          Text(contact.email), // muestra la informacion del objeto
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.phone), // icono de telefono (nativo tambien de fluter)
                          const SizedBox(width: 8),
                          Text(contact.phone), // muestra la informacion del objeto
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
