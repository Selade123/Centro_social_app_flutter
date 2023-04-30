// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'main.dart';

class AjustePage extends StatefulWidget {
  const AjustePage({Key? key}) : super(key: key);

  @override
  _AjustePageState createState() => _AjustePageState();
}

class _AjustePageState extends State<AjustePage> {
  final double _appBarTitleSpacing =
      20.0; // Modifica este valor para ajustar el centrado

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(235, 35, 129, 163),
        centerTitle: true, // Centra el título del AppBar
        titleSpacing:
            _appBarTitleSpacing, // Espacia el título según los píxeles especificados
        title: const Text(
          'AJUSTES',
          selectionColor: Colors.white,
        ),
        leading: IconButton(
          icon: Image.asset("assets/regreso_1.png"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
          },
        ),
      ),
      body: Center(
        child: Card(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            child: const SizedBox(
              width: 200,
              height: 50,
              child: Center(
                child: Text("Cerrar sesión"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
