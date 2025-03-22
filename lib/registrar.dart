// Importando
import 'package:cima_park/main.dart';
import 'package:cima_park/recuperar_pass.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'; 
import 'recuperar_pass.dart'; 

class registrar_pantalla extends StatelessWidget {
  const registrar_pantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: kIsWeb
                ? NetworkImage("assets/images/CimaPark.png") 
                : AssetImage("assets/images/CimaPark.png")
                    as ImageProvider, // 
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Input correo
                TextField(
                  decoration: InputDecoration(
                    hintText: "Correo electrónico",
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Input contraseña
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Contraseña",
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // boton/enlace olvide mi contraseña"
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const recuperar_pass()),
                    );
                  },
                  child: const Text(
                    "Olvidé mi contraseña",
                    style: TextStyle(
                      color: Color(0xFF0E502E),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // boton ingresar
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainApp()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF519040), 
                    foregroundColor: Colors.white, 
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                  ),
                  child: const Text("INGRESAR"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
