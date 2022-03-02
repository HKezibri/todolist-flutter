import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
import 'package:faker/faker.dart';
//import 'dart:math';


class Tasks extends StatefulWidget {
  final tasks = new List<Task>.generate(
      7,(i) => Task(i, random.boolean(), faker.lorem.sentence(),
                faker.date.dateTime(minYear: 2000, maxYear: 2020)));

  @override
  State<StatefulWidget> createState() {
    /* TODO: implement createState */
    throw UnimplementedError();
  }
}


/*var faker = new Faker();
List<Task> tasks = List<Task>.generate(7, (index) => Task(random.integer(100),faker.lorem.sentence(),random.boolean())
);
*/


