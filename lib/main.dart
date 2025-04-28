import 'package:flutter/material.dart';
import 'package:najerarutas/pagina_inicial.dart';
import 'package:najerarutas/pagina_cuatro.dart';
import 'package:najerarutas/pagina_cinco.dart';
import 'package:najerarutas/pagina_seis.dart';
import 'package:najerarutas/pagina_siete.dart';
import 'package:najerarutas/pagina_ocho.dart';
import 'package:najerarutas/pagina_nueve.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
        '/pantalla8': (context) => const PantallaOcho(),
        '/pantalla9': (context) => const PantallaNueve(),
      },
    );
  }
}
