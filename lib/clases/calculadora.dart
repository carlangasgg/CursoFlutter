import 'dart:io';

void main() {
  //1: suma
  //2: resta
  //3: multiplicación
  //4: división
  stdout.write("Ingresa una opción: ");
  int opcion = int.parse(stdin.readLineSync()!);
  stdout.write("Ingresa un número: ");
  int valorUno = int.parse(stdin.readLineSync()!);
  stdout.write("Ingresa el siguiente número: ");
  int valorDos = int.parse(stdin.readLineSync()!);

  // print(opcion);
  switch (opcion) {
    case 1:
      print(valorUno + valorDos);
      break;
    case 2:
      print(valorUno - valorDos);
      break;
    case 3:
      print(valorUno * valorDos);
      break;
    case 4:
      print(valorUno / valorDos);
      break;
    default:
      print("Error de opción. Inténtelo de nuevo");
      break;
  }
  //print(valorUno + valorDos);

  Map<String, int> algo = {"A": 1, "B": 2};

  for (var element in algo.entries) {
    print(element.key);
  }
}
