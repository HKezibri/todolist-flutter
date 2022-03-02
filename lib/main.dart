import 'package:flutter/material.dart';
import 'screens/all_tasks.dart';

//import 'package:google_fonts/google_fonts.dart';
//import 'screens/all_tasks.dart';
//import 'models/task.dart';


void main() {
  runApp(TodoList());
}


class TodoList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   /*  return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AllTasks(title: 'ToDoList'),
    ); */
      return MaterialApp(
      title: 'TodoList',
      theme: ThemeData(
      primarySwatch: Colors.blue,
      ),
      home: Scaffold(body: AllTasks()  
      ),
    );
  }
}
