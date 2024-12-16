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
      backgroundColor: Colors.grey.shade900,
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
    double appBarWidth = size.width * .9;
    double avatarWidth = appBarWidth * .15;
    double dropDownWidth = appBarWidth * .55;
    double searchWidth = appBarWidth * .15;
    double notificationWidth = appBarWidth * .15;

    return SizedBox(
      width: appBarWidth,
      height: height,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 14,
        ),
        child: Row(
          children: [
            SizedBox(
              width: avatarWidth - 2,
              height: avatarWidth - 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(avatarWidth - 2),
                  image: const DecorationImage(
                    image: AssetImage("assets/img/pochita.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: dropDownWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Happy watching!",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "Pochita",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: searchWidth,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: notificationWidth,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AlbumPlayer extends StatefulWidget {
  final double height;
  const AlbumPlayer({super.key, required this.height});

  @override
  State<AlbumPlayer> createState() => _AlbumPlayerState();
}

class _AlbumPlayerState extends State<AlbumPlayer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int currentCategory = 0;

    return SizedBox(
      width: double.infinity,
      height: widget.height,
      child: Stack(
        children: [
          // Filtros 90
          SizedBox(
            width: size.width,
            height: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    currentCategory = 0;
                  },
                  child: Container(
                    height: 30,
                    width: size.width * .2,
                    decoration: BoxDecoration(
                      shape: currentCategory == 0
                          ? BoxShape.rectangle
                          : BoxShape.circle,
                      borderRadius: currentCategory == 0
                          ? BorderRadius.circular(
                              5) // Applies only for rectangle shape
                          : null,
                      border: Border.all(
                        color: currentCategory == 0
                            ? Colors.red
                            : Colors.grey.shade900,
                        width: 2, // Adjust the border width as needed
                      ),
                    ),
                    child: Text(
                      "All",
                      textAlign: TextAlign.center,
                      style: currentCategory == 0
                          ? const TextStyle(color: Colors.red)
                          : const TextStyle(
                              color: Colors.white,
                            ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    currentCategory = 1;
                  },
                  child: Container(
                    height: 30,
                    width: size.width * .2,
                    decoration: BoxDecoration(
                      shape: currentCategory == 1
                          ? BoxShape.rectangle
                          : BoxShape.circle,
                      borderRadius: currentCategory == 1
                          ? BorderRadius.circular(
                              5) // Applies only for rectangle shape
                          : null,
                      border: Border.all(
                        color: currentCategory == 1
                            ? Colors.red.shade900
                            : Colors.grey.shade900,
                        width: 2, // Adjust the border width as needed
                      ),
                    ),
                    child: Text(
                      "Series",
                      textAlign: TextAlign.center,
                      style: currentCategory == 1
                          ? const TextStyle(color: Colors.red)
                          : const TextStyle(
                              color: Colors.white,
                            ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    currentCategory = 2;
                  },
                  child: Container(
                    height: 30,
                    width: size.width * .2,
                    decoration: BoxDecoration(
                      shape: currentCategory == 2
                          ? BoxShape.rectangle
                          : BoxShape.circle,
                      borderRadius: currentCategory == 2
                          ? BorderRadius.circular(
                              5) // Applies only for rectangle shape
                          : null,
                      border: Border.all(
                        color: currentCategory == 2
                            ? Colors.red.shade900
                            : Colors.grey.shade900,
                        width: 2, // Adjust the border width as needed
                      ),
                    ),
                    child: Text(
                      "Movie",
                      textAlign: TextAlign.center,
                      style: currentCategory == 2
                          ? const TextStyle(color: Colors.red)
                          : const TextStyle(
                              color: Colors.white,
                            ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    currentCategory = 3;
                  },
                  child: Container(
                    height: 30,
                    width: size.width * .2,
                    decoration: BoxDecoration(
                      shape: currentCategory == 3
                          ? BoxShape.rectangle
                          : BoxShape.circle,
                      borderRadius: currentCategory == 3
                          ? BorderRadius.circular(
                              5) // Applies only for rectangle shape
                          : null,
                      border: Border.all(
                        color: currentCategory == 3
                            ? Colors.red.shade900
                            : Colors.grey.shade900,
                        width: 2, // Adjust the border width as needed
                      ),
                    ),
                    child: Text(
                      "TV Show",
                      textAlign: TextAlign.center,
                      style: currentCategory == 3
                          ? const TextStyle(color: Colors.red)
                          : const TextStyle(
                              color: Colors.white,
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Carrusel
          Positioned(
            top: 90,
            child: SizedBox(
              width: size.width,
              height: widget.height - 140,
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
