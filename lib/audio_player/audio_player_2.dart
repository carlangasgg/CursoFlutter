import 'package:flutter/material.dart';

class AudioPlayer2 extends StatelessWidget {
  const AudioPlayer2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heightAppBar = size.height * .1;
    double heightAlbum = size.height * .7;
    double heightNavMenu = size.height * .1;
    double heightContinueWatching = size.height * .1;
    return Scaffold(
      body: Column(
        children: [
          AppBarPlayer(height: heightAppBar),
          AlbumPlayer(height: heightAlbum),
          ContinueWatching(height: heightContinueWatching),
          NavMenu(height: heightNavMenu),
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
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: height,
      color: Colors.black,
      child: Row(
        children: [
          Container(
            width: size.width * .15,
            color: Colors.white,
          ),
          Container(
            width: size.width * .55,
            color: Colors.lightBlue,
          ),
          Container(
            width: size.width * .15,
            color: Colors.white,
          ),
          Container(
            width: size.width * .15,
            color: Colors.lightBlue,
          ),
        ],
      ),
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
  final dynamic height;

  const ContinueWatching({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
    );
  }
}

class NavMenu extends StatefulWidget {
  final double height;
  const NavMenu({super.key, required this.height});

  @override
  State<NavMenu> createState() => _NavMenuState();
}

class _NavMenuState extends State<NavMenu> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: widget.height,
      color: Colors.lightGreen,
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: size.width * .25,
                color: Colors.black,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentPage = 0;
                        });
                      },
                      icon: const Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 3,
                left: 10,
                right: 10,
                child: Container(
                  width: size.width,
                  height: 3,
                  color: currentPage == 0 ? Colors.red : Colors.black,
                ),
              ),
              const Positioned(
                bottom: 3,
                left: 0,
                right: 0,
                child: Text(
                  "Home",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                width: size.width * .25,
                color: Colors.black,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentPage = 1;
                        });
                      },
                      icon: const Icon(
                        Icons.star_outline_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 3,
                left: 10,
                right: 10,
                child: Container(
                  width: size.width,
                  height: 3,
                  color: currentPage == 1 ? Colors.red : Colors.black,
                ),
              ),
              const Positioned(
                bottom: 3,
                left: 0,
                right: 0,
                child: Text(
                  "New",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                width: size.width * .25,
                color: Colors.black,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentPage = 2;
                        });
                      },
                      icon: const Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 3,
                left: 10,
                right: 10,
                child: Container(
                  width: size.width,
                  height: 3,
                  color: currentPage == 2 ? Colors.red : Colors.black,
                ),
              ),
              const Positioned(
                bottom: 3,
                left: 0,
                right: 0,
                child: Text(
                  "List",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                width: size.width * .25,
                color: Colors.black,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentPage = 3;
                        });
                      },
                      icon: const Icon(
                        Icons.sim_card_download_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 3,
                left: 10,
                right: 10,
                child: Container(
                  width: size.width,
                  height: 3,
                  color: currentPage == 3 ? Colors.red : Colors.black,
                ),
              ),
              const Positioned(
                bottom: 3,
                left: 0,
                right: 0,
                child: Text(
                  "Download",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
