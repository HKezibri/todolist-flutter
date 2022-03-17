import 'package:flutter/material.dart';
//import 'package:todolist/components/tasks/task_master.dart';
import 'package:todolist/models/task.dart';



class TaskDetails extends StatelessWidget {
  const TaskDetails({Key?key, required this.task, required this.delete});
  final Function delete;

  final Task? task;

  @override
  Widget build(BuildContext context) {
    return
    new AlertDialog(
      title: const Text('Task Detail'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('${task!.content}'),
          Text("Completed: "'${task!.completed}'),
          Text("Created at: " '${task!.createdAt}'),

        ],
      ),
      actions: <Widget>[
           TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                
               },
              child: Text('Update'),
            ),
             TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: ( ) {
                delete(task);
                /* 
                   final snackBar = SnackBar(
                    content: const Text('Are you sure you want to delete?'),
                    action: SnackBarAction(
                      label: 'Yes',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar); */},
              child: Text('Delete'),
            ),
             TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () =>
                  Navigator.pop(context),
              child: Text('Cancel'),
            ),
      ],
    );
   
  }
}

