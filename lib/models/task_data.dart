import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: '세아 깨우기'),
    Task(name: '세아 밥주기'),
    Task(name: '세아 재우기'),
  ];

  int get taskCount {
    return tasks.length;
  }
}