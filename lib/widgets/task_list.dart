import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              // 바꾸기전에 isChecked: widget.tasks[index].isDone, widget을 왜 붙여주는진 몰겠음, ㅋㅋ
              isChecked: taskData.tasks[index].isDone,
              toggleCheckbox: (bool? newValue) {
                //bool뒤에 ? 추가
                // setState(() {
                //   widget.tasks[index].toggleDone(); // ?? true 추가
                // });
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
