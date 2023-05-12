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
            final task=taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              // 바꾸기전에 isChecked: widget.tasks[index].isDone, widget을 왜 붙여주는진 몰겠음, ㅋㅋ
              isChecked: task.isDone,
              toggleCheckbox: (bool? newValue) {
                taskData.toggleTask(task);


                //bool뒤에 ? 추가
                // setState(() {
                //   widget.tasks[index].toggleDone(); // ?? true 추가
                // });


              },
              longPressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
