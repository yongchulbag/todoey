import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class addTaskBottom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String? newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        //컨테이너를 두개 쓰는 이유는 컨테이너의 배경색을 지정할수 없기 때문임, 고로 하나는 회색, 그 안에 흰색을 띄우는것
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTitle=newText;
                }
                ,
              ),
              TextButton(
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    backgroundColor: Colors.blueGrey,
                  ),
                ),
                // color: Colors.lightBlueAccent,
                onPressed: () {
                  Provider.of<TaskData>(context).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
              ),
            ],
          )),
    );
    return Container();
  }
}