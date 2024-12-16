import 'package:flutter/material.dart';
import 'package:my_first_app/menu.dart';
import 'package:my_first_app/todo_provider/todo_provider.dart';
import 'package:provider/provider.dart';
//import 'package:my_first_app/my_widgets.dart';
//import 'package:my_first_app/estados.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => TaskProvider(),
      child: const MaterialApp(
        home: Menu(),
      ),
    ),
  );
}
