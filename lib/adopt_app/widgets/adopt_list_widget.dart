import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_first_app/adopt_app/bloc/animal_bloc.dart';

class AdoptListWidget extends StatelessWidget {
  const AdoptListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 12,
          bottom: 12,
        ),
        child: BlocBuilder<AnimalBloc, AnimalState>(
          builder: (context, state) {
            if (state.pageState == AnimalPageStatus.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.pageState == AnimalPageStatus.failure) {
              return const Center(
                child: Text("Error"),
              );
            } else if (state.pageState == AnimalPageStatus.success) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.filteredAnimals.length,
                itemBuilder: (BuildContext context, int index) {
                  final animal = state.filteredAnimals[index];
                  return buildCard(
                    name: animal.name,
                    breed: animal.breed,
                    age: animal.age,
                    animalId: animal.id,
                    isFavorite: animal.isFavorite,
                    context: context,
                  );
                },
              );
            } else {
              return const Center(
                child: Text("Sin data"),
              );
            }
          },
        ),
      ),
    );
  }

  Widget buildCard({
    required String animalId,
    required String name,
    required String breed,
    required int age,
    required bool isFavorite,
    required BuildContext context,
  }) {
    return Container(
      padding: const EdgeInsets.only(
        top: 18,
        bottom: 18,
      ),
      width: 200,
      //height: size.height * .3,
      margin: const EdgeInsets.only(
        right: 8,
        left: 8,
      ),
      color: Colors.white,
      child: Column(
        children: [
          //Avatar
          const CircleAvatar(
            radius: 50,
            backgroundColor: Color(0xFF91C9B9),
          ),
          //Name
          Text(
            name,
            style: const TextStyle(
              color: Color(0xFF3C2F20),
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          //Breed
          Text(
            breed,
            style: const TextStyle(
              color: Color(0xFF3C2F20),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          //Age
          Text(
            "$age years",
            style: const TextStyle(
              color: Color(0xFF3C2F20),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          //type
          //Fav
          IconButton(
            onPressed: () {
              context.read<AnimalBloc>().add(
                    ToggleFavorite(animalId),
                  );
            },
            icon: Icon(
                isFavorite ? Icons.favorite_sharp : Icons.favorite_border,
                size: 40,
                color: isFavorite ? Colors.red : Colors.grey),
            iconSize: 40,
          )
        ],
      ),
    );
  }
}
// backgroudColor: #DBE8DF
// orange: #EE6D2D
// brown: #3C2F20
// brownLight: #8E8E81
// blueLight: #91C9B9