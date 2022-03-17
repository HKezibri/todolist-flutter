import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:todolist/data/tasks_collection.dart';
import 'screens/all_tasks.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'screens/all_tasks.dart';
//import 'models/task.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    
    TodoList());
}


class TodoList extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>
    ChangeNotifierProvider(
      create: (context) => TasksCollection(),
      child: MaterialApp(
      title: 'TodoList',
      theme: ThemeData(
      primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Todo List',
                  style: TextStyle(
                  fontFamily: 'AkayaTelivigala',
                  fontSize: 18,
                  color: Colors.white,

                ),
                //style: GoogleFonts.pacifico(),
            ),
        ),
        body: AllTasks(),
      ),
    ),
    );

}
