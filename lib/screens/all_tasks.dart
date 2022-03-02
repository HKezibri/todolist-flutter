import 'package:flutter/material.dart';
//import 'package:todolist/models/task.dart';
import '../data/tasks.dart' as data;
import '../components/tasks/task_master.dart';


class AllTasks extends StatelessWidget {

   static data.Tasks Task = data.Tasks();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: ListBody(mainAxis: Axis.vertical, reverse: false, children: [
            Container(
            height: 1000,
            child: TaskMaster(tasks: Task.tasks),
          ),
        ])),
    );
  }
}



