import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String name;
  final onChanged;
  final onLongPress;

  TaskTile(
      {required this.isChecked, required this.name, required this.onChanged, required this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress,
      child: CheckboxListTile(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: onChanged,
        title: Text(
          name,
          style: TextStyle(
            decoration: isChecked
                ? TextDecoration.lineThrough
                : TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
