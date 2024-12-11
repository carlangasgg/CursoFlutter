import 'package:flutter/material.dart';

class Estados extends StatefulWidget {
  const Estados({super.key});

  //int contador = 0;
  @override
  State<Estados> createState() => _EstadosState();
}

class _EstadosState extends State<Estados> {
  @override
  Widget build(BuildContext context) {
    //log("build()");
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  const Text(
                    "Contador: 0",
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // contador++;
                    },
                    child: const Text("Sumar"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // contador--;
                    },
                    child: const Text("Restar"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
