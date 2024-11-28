import 'dart:io';

void ejercicio1() {
  Set<String> generosFavoritos = {};
  bool menuActivo = true;

  while (menuActivo) {
    print('Tus géneros: $generosFavoritos');
    print('Añadir género a tu lista: ("s" para salir)');
    String? genero = stdin.readLineSync();

    if (genero == null || genero.toLowerCase() == 's') {
      print('bye');
      menuActivo = false;
    }

    if (generosFavoritos.contains(genero)) {
      print('$genero ya existe');
    } else if (generosFavoritos.length >= 5) {
      print('No puedes añadir más de 5 géneros favoritos.');
    } else {
      generosFavoritos.add(genero!);
      print('$genero añadido');
    }
  }
}
