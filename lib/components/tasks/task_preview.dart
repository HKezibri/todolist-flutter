import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';



class TaskPreview extends StatelessWidget {
  final Task task;
  final Function resetHandler;
  TaskPreview({ this.task,  this.resetHandler});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      ListTile(
        leading: Icon(task.completed == true
            ? Icons.check_box
            : Icons.check_box_outline_blank),
        title: Text(task.content,
            style: TextStyle(
              decoration: task.completed == true
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              color: task.completed == true ? Colors.grey : Colors.black,
            )),
        trailing: Text(
          task.completed == true ? ' done' : ' to do',
        ),
      )
    ]));
  }
}