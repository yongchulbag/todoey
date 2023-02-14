import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> tasks = [
    Task(name:'세아 깨우기'),
    Task(name:'세아 밥주기'),
    Task(name:'세아 재우기'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}