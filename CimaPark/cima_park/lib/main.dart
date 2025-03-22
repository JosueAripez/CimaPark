// Importando
import 'package:cima_park/registrar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'; // Importante para usar kIsWeb

// Main
void main() {
  runApp(const MainApp());
}

// Desarrollo General
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: kIsWeb 
            ? NetworkImage("assets/images/CimaPark.png")  // Para Web
            : AssetImage("assets/images/CimaPark.png") as ImageProvider, // Para Android/iOS
            fit: BoxFit.cover, // Abarca toda la pantalla
        ),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.55), 
              Center( 
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Boton ingresar
                    SizedBox(
                      width: 200, 
                      child: ElevatedButton(
                        onPressed: () {
                          print("Funciona");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF519040), 
                          foregroundColor: Colors.white, 
                        ),
                        child: Text("INGRESAR"),
                      ),
                    ),
                    SizedBox(height: 10), // Para el espcaio entre los botones y no esten pegados
                    // Boton crear cuenta
                    SizedBox(
                      width: 200, 
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const registrar_pantalla()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF519040), 
                          foregroundColor: Colors.white, 
                        ),
                        child: Text("CREAR CUENTA"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // boton ajustes/configuraciones
          Positioned(
            bottom: 16.0,
            left: 16.0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings, color: Color(0xFF0E502E)),
            ),
          ),
        ],
      ),
    );
  }
}
