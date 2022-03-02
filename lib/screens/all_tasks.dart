import 'package:flutter/material.dart';
//import '../data/tasks.dart' as data;


class AllTasks extends StatelessWidget {
  //static data.tasks Task = data.tasks();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: new Text(
            'Todo list',
            style: TextStyle(fontFamily: 'AlexBrush'),
          ),
        ),
        body: SingleChildScrollView(
            child: ListBody(mainAxis: Axis.vertical, reverse: false, children: [
          
        ])),
      ),
    );
  }
}