import 'dart:io';

import 'package:collections_alcinacarlos/ejercicio1.dart';
import 'package:collections_alcinacarlos/ejercicio2.dart';
import 'package:collections_alcinacarlos/ejercicio3.dart';

void main(List<String> arguments) {
  bool menuActivo = true;

  while (menuActivo) {
    print("Introduce una opción válida:");
    menu();

    String? opcion = stdin.readLineSync();
    switch (opcion) {
      case '1':
        ejercicio1();
      case '2':
        ejercicio2();
      case '3':
        ejercicio3();
      case 's':
        menuActivo = false;
      default:
        print("Opción no válida");
    }
  }
}

void menu() {
  print("\t Ejercicio 1");
  print("\t Ejercicio 2");
  print("\t Ejercicio 3");
  print("\t Salir (s)");
}
