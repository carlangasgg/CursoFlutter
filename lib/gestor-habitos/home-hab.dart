import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_first_app/gestor-habitos/new_habit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeHabitosPage extends StatefulWidget {
  const HomeHabitosPage({super.key});

  @override
  State<HomeHabitosPage> createState() => _HomeHabitosPageState();
}

class _HomeHabitosPageState extends State<HomeHabitosPage> {
  final List<Habit> habits = [];
  late final SharedPreferences prefs;
  String? action;

  //Escritura de datos

  // Lectura de datos

  //initState => leer si tenemos información almacenada
  @override
  void initState() {
    super.initState();
    initShared();
  }

  initShared() async {
    prefs = await SharedPreferences.getInstance();
    getData();
  }

  saveData() async {
    await prefs.setString('test', 'Test 1');
    getData();
  }

  getData() {
    setState(() {
      action = prefs.getString('test') ?? "Sin data";
    });
    log(action!);
  }

  void _addHabit(String name, String desc) {
    setState(() {
      habits.add(
        Habit(
          name: name,
          description: desc,
        ),
      );
    });
    print(
      habits.toList(),
    );
  }

  void changeStatus(int index) {
    setState(() {
      habits[index].isComplete = !habits[index].isComplete;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestor de hábitos ($action)"),
      ),
      body: ListView.builder(
        itemCount: habits.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              changeStatus(index);
            },
            title: Text(habits[index].name),
            subtitle: Text(habits[index].description),
            trailing: habits[index].isComplete
                ? const Icon(
                    Icons.check_box,
                    color: Colors.lightGreen,
                  )
                : const Icon(
                    Icons.square_outlined,
                    color: Colors.red,
                  ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'floating-1',
            onPressed: () {
              saveData();
            },
            child: const Icon(Icons.save),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: 'floating-2',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewHabit(
                    submitHabit: _addHabit,
                  ),
                ),
              );
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class Habit {
  String name;
  String description;
  bool isComplete;

  Habit({
    required this.name,
    required this.description,
    this.isComplete = false,
  });

  @override
  String toString() {
    return "Name: $name, description: $description, isComplete: $isComplete";
  }
}
