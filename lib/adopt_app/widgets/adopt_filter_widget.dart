import 'package:flutter/material.dart';

class AdoptFilterWidget extends StatelessWidget {
  const AdoptFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double _cardWidth = size.width * .2;
    return SizedBox(
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildCardWidget(_cardWidth,
              icon: Icon(
                Icons.pets,
                color: Colors.white,
              ),
              title: "Dog"),
          buildCardWidget(_cardWidth,
              icon: Icon(
                Icons.face,
                color: Colors.white,
              ),
              title: "Cat"),
          buildCardWidget(_cardWidth,
              icon: Icon(
                Icons.flutter_dash,
                color: Colors.white,
              ),
              title: "Bird"),
          buildCardWidget(_cardWidth,
              icon: Icon(
                Icons.rocket_launch_outlined,
                color: Colors.white,
              ),
              title: "Reptile"),
        ],
      ),
    );
  }

  Widget buildCardWidget(double width, {required Icon icon, required title}) {
    return Container(
      width: width,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xFF91C9B9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

// blueLight: #91C9B9