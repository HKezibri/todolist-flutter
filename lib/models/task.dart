//import 'package:flutter/material.dart';

class Task {

  // Attributs
  int id;
  String content;
  bool completed;
  DateTime createdAt;

  //constructor
  //Task(String sentence, bool boolean, {this.content, this.completed = false});
  Task(int id, String content, bool completed) {
    this.id = id;
    this.content = content;
    this.completed = completed;
  }

}
