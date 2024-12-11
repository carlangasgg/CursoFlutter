void main() {
  //print("Hola mundo");
  //operadores();
  //control();

  //variables();
  //saludar("Carlos", "Bugueño");
  //saludar2(nombre: "Carlos", apellido: "Bugueño");
  Alumns alumno = Alumns(name: "Carlos", id: 1);
  //print(alumno.name);
  obtenerClima();
}

class Animal {
  void sonido() => print("Hacer un sonido");
}

class Perro extends Animal {
  @override
  void sonido() => print("Ladrar");
}

class Gato extends Animal {
  @override
  void sonido() => print("Maullar");
}

class Alumns {
  final String name;
  final int id;

  Alumns({required this.name, required this.id});
  @override
  String toString() {
    return "Nombre: $name ($id)";
  }
}

void variables() {
  var ciudad = "Quilpué";

  var temp = 38.0;
  int edad = 90;
  bool esEstudiante = true;
  String nombre = "Carlos";
  //print(ciudad);
  //print(temp);
}

void listaYmapa() {
  final List<String> comidas = ["Fideos", "Arroz", "Puré"];
  Map<String, int> alumnos = {
    "Carlos": 1,
    "Carlangas": 2,
  };
}

void operadores() {
  int a = 10;
  int b = 3;
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);

  print(a > b);
  print(a >= b);
  print(a == b);
  print(a != b);
}

void control() {
  int edad = 18;
  if (edad >= 18) {
    print("Mayor de edad");
  } else {
    print("Menor de edad");
  }

  String diaSemana = "martes";
  //switch
  switch (diaSemana) {
    case "Lunes":
      print("Es lunes");
      break;
    case "martes":
      print("es martes");
      break;
    default:
      print("Otro día");
      break;
  }

  //for, for in, while
  for (int i = 1; i <= 5; i++) {
    print("Número: $i");
  }

  for (var element in ([1, 2, 3, 4])) {
    print("Número: $element");
  }

  int count = 1;
  while (count <= 5) {
    print("Contador: $count");
    count++;
  }
}

void saludar(String nombre, [String apellido = ""]) {
  print("Hola, $nombre $apellido");
}

void saludar2({required String nombre, String apellido = ""}) {
  print("Hola, $nombre $apellido");
}

Future<String> clima() async {
  print("Obteniendo el clima...");
  await Future.delayed(const Duration(seconds: 3));
  return "El clima está pulento.";
}

Future<String> obtenerClima() async {
  String datosClima = await clima();
  print(datosClima);
  return datosClima;
}
