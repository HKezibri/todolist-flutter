import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';



class TaskPreview extends StatelessWidget {

  const TaskPreview({ Key? key, required  this.task, required this.viewTask }) : super(key : key);
  final Task task;
  final Function viewTask;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
        Checkbox(
          value: task.completed,
          onChanged: (value) {
            task.completed = true;
          }),
          title: Text(task.content),
          onTap:()=> viewTask(task),
    );
  }
}