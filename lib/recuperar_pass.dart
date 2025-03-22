import 'package:flutter/material.dart';

class recuperar_pass extends StatelessWidget {
  const recuperar_pass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Recuperar Contraseña")),
      body: const Center(
        child: Text("Pantalla para recuperar contraseña", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
