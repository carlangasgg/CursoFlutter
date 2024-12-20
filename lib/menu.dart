import 'package:flutter/material.dart';
import 'package:my_first_app/adopt_app/adopt_app.dart';
import 'package:my_first_app/audio_player/audio_player.dart';
import 'package:my_first_app/audio_player/audio_player_2.dart';
import 'package:my_first_app/entrada_de_datos/in_datos.dart';
import 'package:my_first_app/galeria_imagenes/galeria_imagenes.dart';
import 'package:my_first_app/gestor-habitos/home_hab.dart';
import 'package:my_first_app/todo_bloc/todo_bloc_page.dart';
import 'package:my_first_app/todo_provider/todo_provider.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(32),
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeHabitosPage(),
                  ),
                );
              },
              child: const Text("Gestor de hábitos"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InDatos(),
                  ),
                );
              },
              child: const Text("Widget de entrada de datos"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GaleriaImagenesPage(),
                  ),
                );
              },
              child: const Text("Galería de imágenes"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AudioPlayerPage(),
                  ),
                );
              },
              child: const Text("Reproductor de audio"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AudioPlayer2(),
                  ),
                );
              },
              child: const Text("Reproductor de audio2"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TodoProvider(),
                  ),
                );
              },
              child: const Text("Todo - Provider"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TodoBlocPage(),
                  ),
                );
              },
              child: const Text("Todo - Bloc"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AdoptAppPage(),
                  ),
                );
              },
              child: const Text("Adopt App"),
            ),
          ],
        ),
      ),
    );
  }
}
