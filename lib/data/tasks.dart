import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
import 'package:faker/faker.dart';
//import 'dart:math';

// var faker = new Faker();

// class Tasks extends StatefulWidget {
//   final tasks = new List<Task>.generate(
//       30,(i) => Task(i, false, faker.lorem.sentence(),
//                 faker.date.dateTime(minYear: 2000, maxYear: 2022)));

//   @override
//   State<StatefulWidget> createState() {
//     /* implement createState */
//     throw UnimplementedError();
//   }

// }


var faker = new Faker();

final tasks = new List<Task>.generate(
      30,(i) => Task(i+1, false, faker.lorem.sentence(),
               faker.date.dateTime(minYear: 2000, maxYear: 2022)));


