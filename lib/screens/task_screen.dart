import 'package:flutter/material.dart';
import 'package:fluttertodoey/model/task_data.dart';
import 'package:fluttertodoey/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:fluttertodoey/components/task_list.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: _NestedScrollable(),
      drawer: Icon(Icons.list),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: AddTaskScreen())),
          );
        },
        backgroundColor: Colors.redAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _NestedScrollable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, bool isScrolled) {
        return <Widget>[
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              sliver: SliverAppBar(
                backgroundColor: Colors.redAccent,
                floating: true,
                elevation: 0,
                expandedHeight: 100,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(30),
                  child: Text(
                    '${Provider.of<TaskData>(context).taskCount} tasks',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                title: Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ];
      },
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )),
        child: Builder(builder: (context) {
          return CustomScrollView(
            slivers: <Widget>[
              TaskList(),
            ],
          );
        }),
      ),
    );
  }
}
