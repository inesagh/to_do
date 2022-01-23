import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:to_do/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'name', isChecked: false),
  ];

  UnmodifiableListView<Task> get tasks =>
      UnmodifiableListView(_tasks);

  int get tasksCount => _tasks.length;

  void addTask(Task newTask){
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}