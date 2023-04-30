// ignore_for_file: file_names, library_private_types_in_public_api

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormularioPage extends StatefulWidget {
  const FormularioPage({Key? key}) : super(key: key);

  @override
  _FormularioPageState createState() => _FormularioPageState();
}

class _FormularioPageState extends State<FormularioPage> {
  final _formKey = GlobalKey<FormState>();
  final _nombreController = TextEditingController();
  final _numeroController = TextEditingController();
  String? _sexoSeleccionado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 35, 129, 163),
        title: const Text('Formulario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nombreController,
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, introduce un nombre';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Sexo',
                ),
                value: _sexoSeleccionado,
                onChanged: (newValue) {
                  setState(() {
                    _sexoSeleccionado = newValue;
                  });
                },
                items: <String>['Hombre', 'Mujer', 'No especificar']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _numeroController,
                decoration: const InputDecoration(
                  labelText: 'Número de contacto',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, introduce un número de contacto';
                  }
                  if (value.length != 10) {
                    return 'El número de contacto debe tener 10 dígitos';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    // Obtenemos el directorio de almacenamiento externo del dispositivo
                    final directory = await getExternalStorageDirectory();

                    // Creamos una instancia de File con el nombre del archivo a guardar
                    final file = File('${directory!.path}/Soli.txt');

                    // Creamos una cadena con los datos a guardar en el archivo
                    final data =
                        '${_nombreController.text}, $_sexoSeleccionado, ${_numeroController.text}\n';

                    // Escribimos los datos en el archivo
                    await file.writeAsString(data, mode: FileMode.append);

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Formulario enviado correctamente'),
                      ),
                    );
                  }
                },
                child: const Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
