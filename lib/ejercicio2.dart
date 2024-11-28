import 'dart:io';

void ejercicio2() {
  List<String> tareas = [];
  bool menuActivo = true;

  while (menuActivo) {
    mostrarMenu();

    String? opcion = stdin.readLineSync();
    
    switch (opcion) {
      case '1':
        tareas.add(pedirTarea());
        print("\t Tarea añadida");
      case '2':
        print('Tus tareas: $tareas');
        mostrarTareas(tareas);
      case '3':
        tareas.remove(pedirTarea());
        print("\t Tarea quitada");
      case 's':
        menuActivo = false;
      default:
        print("Opción no válida");
    }
  }
}

void mostrarTareas(List<String> tareas) {
  for (var i = 0; i < tareas.length; i++) {
    print("\t$i. ${tareas[i]}");
  }
}

void mostrarMenu() {
  print("Qué quieres hacer?");
  print("\t 1. Añadir tarea");
  print("\t 2. Ver tareas");
  print("\t 3. Eliminar tarea");
  print("\t Salir (s)");
}

String pedirTarea() {
  print("\t Dime el nombre de la tarea:");

  String? tarea;

  while (tarea == null) {
    tarea = stdin.readLineSync();
  }

  return tarea;
}
