import 'package:flutter/material.dart';

class AudioPlayer2 extends StatelessWidget {
  const AudioPlayer2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heightAppBar = size.height * .15;
    double heightAlbum = size.height * .70;
    double heightContinue = size.height * .15;
    return Scaffold(
      body: Column(
        children: [
          AppBarPlayer(height: heightAppBar),
          AlbumPlayer(height: heightAlbum),
          ContinueWatching(height: heightContinue),
        ],
      ),
    );
  }
}

class AppBarPlayer extends StatelessWidget {
  final double height;
  const AppBarPlayer({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: Colors.yellow,
    );
  }
}

class AlbumPlayer extends StatelessWidget {
  final double height;
  const AlbumPlayer({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: height,
      color: Colors.black,
      child: Stack(
        children: [
          // Filtros 90
          Container(
            width: size.width,
            height: 90,
            color: Colors.redAccent,
          ),
          // Carrusel
          Positioned(
            top: 90,
            child: Container(
              width: size.width,
              height: height - 140,
              //color: Colors.white,
              child: carruselImages(),
            ),
          ),
          // Slider 40
          Positioned(
            bottom: 10,
            left: size.width * .25,
            right: size.width * .25,
            child: Container(
              //width: 100,
              height: 30,
              color: Colors.black,
              child: SizedBox(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    points(true),
                    points(true),
                    points(true),
                    points(true),
                    points(false),
                    points(true),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget points(bool isCircle) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: isCircle ? Colors.grey : Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  Widget carruselImages() {
    return Container(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 8,
      ),
      child: Stack(
        children: [
          // left
          Positioned(
            top: 30,
            bottom: 0,
            left: -100,
            child: Transform.rotate(
              angle: -.10,
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
          ),
          // right
          Positioned(
            top: 30,
            bottom: 0,
            right: -100,
            child: Transform.rotate(
              angle: .10,
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
          ),
          // center
          Positioned(
            top: 0,
            bottom: 30,
            left: 40,
            right: 40,
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContinueWatching extends StatelessWidget {
  final double height;
  const ContinueWatching({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: Colors.lightGreen,
    );
  }
}
