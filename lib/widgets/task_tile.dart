import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final void Function (bool?) toggleCheckbox;
  final void Function ()? longPressCallback;

  TaskTile({required this.taskTitle, required this.isChecked, required this.toggleCheckbox, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheckbox,
      ),
    );
  }
}


