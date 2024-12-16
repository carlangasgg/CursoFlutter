import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = [];
  int counter = 0;

  addTask(String title) {
    _tasks.add(
      Task(title: title),
    );
    notifyListeners();
  }

  updateStatus(int index) {
    _tasks[index].isCompleted = !_tasks[index].isCompleted;
    notifyListeners();
  }
}

class Task {
  String title;
  bool isCompleted;

  Task({required this.title, this.isCompleted = false});
}

class TodoProvider extends StatelessWidget {
  const TodoProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Todo provider",
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: taskProvider._tasks.length,
              itemBuilder: (BuildContext context, int index) {
                final task = taskProvider._tasks[index];
                return ListTile(
                  title: Text(
                    task.title,
                    style: TextStyle(
                      decoration: task.isCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  trailing: Checkbox(
                    value: task.isCompleted,
                    onChanged: (value) => taskProvider.updateStatus(index),
                  ),
                );
              },
            ),
          ),
          TodoInputText(),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

class TodoInputText extends StatelessWidget {
  TodoInputText({super.key});
  final TextEditingController _ctrl = TextEditingController();

  _addTask(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context, listen: false);
    if (_ctrl.text.isNotEmpty) {
      taskProvider.addTask(_ctrl.text);
      _ctrl.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextField(
          controller: _ctrl,
          decoration: const InputDecoration(labelText: "Nueva tarea"),
        )),
        ElevatedButton(
          onPressed: () => _addTask(context),
          child: const Text(
            "Agregar",
          ),
        ),
      ],
    );
  }
}
