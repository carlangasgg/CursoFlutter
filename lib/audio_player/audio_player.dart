import 'package:flutter/material.dart';

class AudioPlayerPage extends StatefulWidget {
  const AudioPlayerPage({super.key});

  @override
  State<AudioPlayerPage> createState() => _AudioPlayerPageState();
}

class _AudioPlayerPageState extends State<AudioPlayerPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double imgHeight = size.height * .45;

    return Scaffold(
      backgroundColor: const Color(0xFF13122B),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "Recently Played",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: size.width,
              height: imgHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage("assets/img/lp.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 15),
            songInfo(),
            audioControls(size),
            songLyric(size),
          ],
        ),
      ),
    );
  }

  songInfo() {
    return Container();
  }

  audioControls(Size size) {
    double percentage = size.width * .4;

    timeSlider() {
      return SizedBox(
        width: size.width,
        height: 10,
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Container(
              width: size.width,
              height: 4,
              color: Colors.white,
            ),
            Container(
              width: percentage,
              height: 4,
              color: const Color(0xFF643CEB),
            ),
            Positioned(
              left: percentage,
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF643CEB),
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "In the end",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Linkin Park",
                      style: TextStyle(
                        color: Colors.white38,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),

            timeSlider(),
            const SizedBox(
              height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "0:00",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "3:39",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            //Minutos
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shuffle, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon:
                  const Icon(Icons.skip_previous_rounded, color: Colors.white),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Color(0xFF643CEB),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.play_arrow_rounded, color: Colors.white),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.skip_next_rounded, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.repeat_rounded, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }

  songLyric(Size size) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            width: size.width,
            //height: size.height * .1,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              color: Color(0xFF302F42),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Lyrics",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.open_in_new_rounded),
                        Icon(Icons.open_in_full_rounded),
                      ],
                    ),
                  ],
                ),
                Text(
                  "But in the end",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "it doesn't even matter.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Azul (fondo)   : 13122B
// Morado / lila  : 643CEB
// gris (lyric)   : 302F42