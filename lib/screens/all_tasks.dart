import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/components/tasks/task_details.dart';
import 'package:todolist/data/tasks_collection.dart';
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
  
  
  @override
  Widget build(BuildContext context) {
      return Consumer<TasksCollection>(
        builder: (context, tasksCollection, child) {
        return Scaffold(
        body: Visibility(
            child: TaskMaster(tasks: tasksCollection.getAllTask(), viewTask: (Task task)=>{
              setState(() {
                chosenTask = task;
              })
            }),
            visible: (chosenTask == null),
            replacement: TaskDetails(task: chosenTask, delete: (Task task){
                    setState(() {
        chosenTask = null;
      });
      tasksCollection.delete(task.id);
            }
),
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
                            
                          },
                          child: Text('Add')),
                    ],
                  );
                }),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
      ),
      );

        });
  }

}




