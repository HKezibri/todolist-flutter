import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
import '../data/tasks.dart' as data;


class AllTasks extends StatelessWidget {
  
   static data.Tasks Task = data.Tasks();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
        title: const Text(
          'Todo List',
                style: TextStyle(
                fontFamily: 'AkayaTelivigala',
                fontSize: 18,
                color: Colors.white
              ),
        ),
        ),
        body: SingleChildScrollView(
            child: ListBody(mainAxis: Axis.vertical, reverse: false, children: [
            Container(
            height: 1000,
            child: TaskMaster(tasks: Task.tasks),
          ),
        ])),
      ),
    );
  }
}

class TaskMaster extends StatelessWidget {
  final List<Task> tasks;
  TaskMaster({this.tasks});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: tasks.map((Task task) {
              return TaskPreview(task: task);
        }).toList(),
      ),
    );
  }

}
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
