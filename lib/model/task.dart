class Task {
  Task({this.taskName, this.isDone = false});

  String taskName;
  bool isDone;

  void toggleDone() {
    isDone = !isDone;
  }
}
