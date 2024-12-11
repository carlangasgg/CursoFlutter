import 'package:flutter/material.dart';

class MyCheckbox extends StatelessWidget {
  final bool check;
  final Function(bool?)? onChanged;
  const MyCheckbox({
    super.key,
    required this.onChanged,
    required this.check,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: check,
      onChanged: onChanged,
    );
  }
}
