import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {

  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name, // widget을 왜 붙여주는진 몰겠음, ㅋㅋ
          isChecked: widget.tasks[index].isDone,
          toggleCheckbox: (bool? newValue) {
            //bool뒤에 ? 추가
            setState(() {
              widget.tasks[index].toggleDone(); // ?? true 추가
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
