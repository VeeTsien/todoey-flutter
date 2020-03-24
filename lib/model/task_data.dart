import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(taskName: 'sample1', isDone: false),
    Task(taskName: 'sample2', isDone: false),
    Task(taskName: 'sample3', isDone: false),
  ];

  int get taskCount {
    return tasks.length;
  }

  void changeCheckBoxState(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void addNewTask(Task newTask) {
    tasks.add(newTask);
    notifyListeners();
  }
}
