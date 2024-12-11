import 'package:flutter/material.dart';
import 'package:my_first_app/clases/nav/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Página 1"),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Page2(
                product: 'Some stuff',
              ),
            ),
          );
        },
        child: const Text("Ir a página 2"),
      ),
    );
  }
}
