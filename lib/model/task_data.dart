import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskName: 'sample1', isDone: false),
    Task(taskName: 'sample2', isDone: false),
    Task(taskName: 'sample3', isDone: false),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void changeCheckBoxState(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void addNewTask(Task newTask) {
    _tasks.add(newTask);
    notifyListeners();
  }
}
