import 'package:flutter/material.dart';

class PantallaCinco extends StatefulWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  State<PantallaCinco> createState() => _PantallaCincoState();
}

class _PantallaCincoState extends State<PantallaCinco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfff32121), // Fondo azul
          title: const Center(
            // Centra el texto
            child: Text(
              'Ejemplo 2',
              style: TextStyle(
                color: Colors.white, // Letra blanca
                fontSize: 20.0, // Tamaño de la letra 20
              ),
            ),
          ),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Show Alert Dialog'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Close'),
                    ),
                  ],
                  title: const Text('Flutter Mapp'),
                  contentPadding: const EdgeInsets.all(20.0),
                  content: const Text('This is the Alert Dialog'),
                ),
              );
            },
          ),
        ));
  }
}
