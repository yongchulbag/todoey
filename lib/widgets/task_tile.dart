import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void ToggleCheckbox(bool? newValue) { //bool뒤에 ? 추가
    setState(() {
      isChecked = newValue ?? true; // ?? true 추가
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
  final Function (bool?) ToggleCheckbox; // (bool?) 추가

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