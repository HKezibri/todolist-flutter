import 'package:flutter/cupertino.dart';
import 'tasks.dart' as data;
import '../models/task.dart';


class TasksCollection extends ChangeNotifier {

 List<Task> tasks = data.tasks;
    
  void create(Task  task){
    tasks.add(task);
    notifyListeners();
  }

  void update(Task task){
    var res = tasks.indexOf(task);
    var element = tasks[res];
    element.completed = !element.completed;
    notifyListeners();
  }

  void updateContent(Task task, String newContent){
    var res = tasks.indexOf(task);
    var element = tasks[res];
    element.content = newContent;
    notifyListeners();
  }

  List<Task> getAllTask(){
    return tasks;
  }

  void delete(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}