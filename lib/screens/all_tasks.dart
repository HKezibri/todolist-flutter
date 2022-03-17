import 'package:flutter/material.dart';
import 'package:todolist/components/tasks/task_details.dart';
import 'package:todolist/models/task.dart';
import '../data/tasks.dart' as data;
import '../components/tasks/task_master.dart';

class AllTasks extends StatefulWidget {
  const AllTasks({ Key? key }) : super(key: key);

  @override
  State<AllTasks> createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {
    List<Task> task = data.tasks;

    Task? chosenTask;

    void viewTask(task){
      setState(() {
        chosenTask = task;
      });
    }
    void _addTask() {
    setState(() {
      
    });
  
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Visibility(
            child: TaskMaster(tasks: task, viewTask: viewTask),
            visible: (chosenTask == null),
            replacement: TaskDetails(task: chosenTask),
          ),
             floatingActionButton: FloatingActionButton(
                onPressed: () =>  showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Add Todo'
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                          onPressed: () {
                            _addTask();
                          },
                          child: Text('Add')),
                    ],
                  );
                }),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
      ),
      );
  }

}




