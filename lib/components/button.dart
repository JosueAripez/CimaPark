import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.55), // Baja los botones un poco más de la mitad
                Center( // Centra los botones horizontalmente
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print("Funciona");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF519040), // Color de fondo
                          foregroundColor: Colors.white, // Color del texto
                        ),
                        child: Text("INGRESAR"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print("Funciona2");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF519040), // Color de fondo
                          foregroundColor: Colors.white, // Color del texto
                        ),
                        child: Text("CREAR CUENTA"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 16.0,
              left: 16.0,
              child: IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: Color(0xFF0E502E)
                ),
                icon: Icon(Icons.settings),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
