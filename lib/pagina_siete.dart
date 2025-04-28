import 'package:flutter/material.dart';

class PantallaSiete extends StatefulWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  State<PantallaSiete> createState() => _PantallaSeisState();
}

class _PantallaSeisState extends State<PantallaSiete> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfff32121), // Fondo azul
          title: const Center(
            // Centra el texto
            child: Text(
              'Ejemplo 4',
              style: TextStyle(
                color: Colors.white, // Letra blanca
                fontSize: 20.0, // Tamaño de la letra 20
              ),
            ),
          ),
        ),
        body: GestureDetector(
          // Wrap the Center with GestureDetector
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: Center(
            child: Container(
              width: double.infinity,
              height: 250.0,
              color: Colors.blueGrey,
              child: AnimatedAlign(
                alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: const FlutterLogo(size: 50.0),
              ),
            ),
          ),
        ));
  }
}
