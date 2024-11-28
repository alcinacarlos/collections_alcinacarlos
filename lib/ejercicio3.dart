import 'dart:io';

void ejercicio3() {
  Map<String, int> calificaciones = {};
  bool menuActivo = true;

  while (menuActivo) {
    mostrarMenu();
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        calificaciones[pedirEstudiante()] = pedirNota();
        print("\t Calificacion añadida");
      case '2':
        print('Tus calificaciones: $calificaciones');
        print(calificaciones);
      case '3':
        calificaciones.remove(pedirEstudiante());
        print("\t Calificacion quitada");
      case 's':
        menuActivo = false;
      default:
        print("Opción no válida");
    }
  }
}

void mostrarMenu() {
  print("Qué quieres hacer?");
  print("\t 1. Añadir calificacion");
  print("\t 2. Ver calificaciones");
  print("\t 3. Eliminar calificacion");
  print("\t Salir (s)");
}

String pedirEstudiante() {
  print("\t Nombre del estudiante:");

  String? estudiante;

  while (estudiante == null) {
    estudiante = stdin.readLineSync();
  }
  return estudiante;
}

int pedirNota() {
  print("\t Nota:");

  int? nota;

  while (nota == null) {
    String? consola;
    while (consola == null) {
      consola = stdin.readLineSync();
    }
    nota = int.tryParse(consola);
  }

  return nota;
}
