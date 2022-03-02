import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
import './task_preview.dart';

class TaskMaster extends StatelessWidget {
  final List<Task> tasks;
  TaskMaster({this.tasks});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        //Read this as "take each task in tasks and map it and form them back into a List".
        children: tasks.map((Task task) {
              return TaskPreview(task: task);
        }).toList(),
      ),
    );
  }

}
