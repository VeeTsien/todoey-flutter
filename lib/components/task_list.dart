import 'package:flutter/material.dart';
import 'package:fluttertodoey/components/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:fluttertodoey/model/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => TaskTile(
          taskName: Provider.of<TaskData>(context).tasks[index].taskName,
          isDone: Provider.of<TaskData>(context).tasks[index].isDone,
          checkBoxCallback: (checkboxState) {
            Provider.of<TaskData>(context, listen: false).changeCheckBoxState(
                Provider.of<TaskData>(context, listen: false).tasks[index]);
          },
        ),
        childCount: Provider.of<TaskData>(context).taskCount,
      ),
    );
  }
}
