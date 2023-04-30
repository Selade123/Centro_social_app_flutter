// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CuentaPage extends StatelessWidget {
  const CuentaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 35, 129, 163),
        title: Image.asset("assets/CUENTA.png"),
        centerTitle: true,
        leading: IconButton(
          icon: Image.asset("assets/regreso_1.png"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: Icon(Icons.home), // Reemplaza el widget Text por Icon
      ),
    );
  }
}
