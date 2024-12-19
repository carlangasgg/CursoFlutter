import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_first_app/adopt_app/bloc/animal_bloc.dart';
import 'package:my_first_app/adopt_app/favorite_page.dart';
import 'package:my_first_app/adopt_app/widgets/adopt_bar_widget.dart';
import 'package:my_first_app/adopt_app/widgets/adopt_filter_widget.dart';
import 'package:my_first_app/adopt_app/widgets/adopt_list_widget.dart';

class AdoptAppPage extends StatelessWidget {
  const AdoptAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<AnimalBloc>()..add(LoadAnimals()),
      child: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDBE8DF),
      body: const Column(
        children: [
          AdoptBarWidget(),
          AdoptFilterWidget(),
          AdoptListWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FavoritePage(),
              ),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_rounded),
            label: "Favoritos",
          ),
        ],
      ),
    );
  }
}

class AdoptAppBarWidget {
  const AdoptAppBarWidget();
}


// backgroudColor: #DBE8DF
// orange: #EE6D2D
// brow: #3C2F20
// browLight: #8E8E81
// blueLight: #91C9B9