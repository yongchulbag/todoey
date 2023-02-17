import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: '세아 깨우기'),
    Task(name: '세아 밥주기'),
    Task(name: '세아 재우기'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          toggleCheckbox: (bool? newValue) {
            //bool뒤에 ? 추가
            setState(() {
              tasks[index].toggleDone(); // ?? true 추가
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
