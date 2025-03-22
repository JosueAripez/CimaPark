// Imports 

import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

// Main
void main(List<String> arguments) {
 
  /*
    Las varibles se pueden declarar haciendo uso del "var" el cual asigna el tipo de variable de manera
    automatica. Lo recomendado es siempre asignarlas de manera nativa por su tipo.
  */

  var nombre = "Jossue";
  var edad = 72;
  String palabra = "años";
  print(nombre);

  print("Hola soy $nombre y tengo $edad $palabra");
  
  // El "num" es un tipo de varibale que admite numeros enteros y con decimales
  num num1 = 30;
  print(num1);
  num1 = .2;
  print(num1);

  // Se pueden hacer conversiones
  String toNumber = "31";
  int numbesOK = int.parse(toNumber);
  print("El numero es: $numbesOK");

}
