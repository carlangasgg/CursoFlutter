import 'package:flutter/material.dart';

class NewHabit extends StatefulWidget {
  final Function(String, String) submitHabit;

  const NewHabit({super.key, required this.submitHabit});

  @override
  State<NewHabit> createState() => _NewHabitState();
}

class _NewHabitState extends State<NewHabit> {
  final TextEditingController _nameCtrl = TextEditingController();
  final TextEditingController _descCtrl = TextEditingController();

  void submit() {
    final name = _nameCtrl.text;
    final desc = _descCtrl.text;

    if (name.isNotEmpty && desc.isNotEmpty) {
      widget.submitHabit(name, desc);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nuevo Hábito"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _nameCtrl,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                labelText: "Nombre del hábito",
              ),
            ),
            TextField(
              controller: _descCtrl,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                labelText: "Descripción",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: submit,
              child: const Text("Agregar"),
            ),
          ],
        ),
      ),
    );
  }
}
