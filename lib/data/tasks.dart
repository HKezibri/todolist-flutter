import 'package:todolist/models/task.dart';
import 'package:faker/faker.dart';


var faker = new Faker();
List<Task> tasks = List<Task>.generate(7, (index) => Task(random.integer(100),faker.lorem.sentence(),random.boolean())
);

