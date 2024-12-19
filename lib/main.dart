import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_first_app/adopt_app/bloc/animal_bloc.dart';
import 'package:my_first_app/menu.dart';
import 'package:my_first_app/todo_provider/todo_provider.dart';
import 'package:provider/provider.dart';
//import 'package:my_first_app/my_widgets.dart';
//import 'package:my_first_app/estados.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => AnimalBloc(),
      child: const MaterialApp(
        home: Menu(),
      ),
    ),
    //ChangeNotifierProvider(
    //  create: (_) => TaskProvider(),
    //  child: const MaterialApp(
    //    home: Menu(),
    //  ),
    //),
  ); //
}
