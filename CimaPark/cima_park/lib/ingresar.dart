import 'package:flutter/material.dart';

class ingresar_pantalla extends StatelessWidget {
  const ingresar_pantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ingresar")),
      body: const Center(
        child: Text("Pantalla para Ingresar", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
