import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isDone;
  final Function checkBoxCallback;

  TaskTile({this.taskName, this.isDone, this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
          fontSize: 30,
          decoration: isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isDone,
        onChanged: checkBoxCallback,
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 20,
      ),
    );
  }
}
