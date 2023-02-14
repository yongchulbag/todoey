import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void ToggleCheckbox(bool newValue) {
    setState(() {
      isChecked = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is A task',
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing: CheckBoxWidget(isChecked, ToggleCheckbox),
    );
  }
}

class CheckBoxWidget extends StatelessWidget {
  final bool isChecked;
  final Function ToggleCheckbox;

  CheckBoxWidget(this.isChecked, this.ToggleCheckbox);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: ToggleCheckbox,
    );
  }
}