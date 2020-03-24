import 'package:flutter/material.dart';
import 'package:fluttertodoey/model/task_data.dart';
import 'package:provider/provider.dart';
import 'screens/task_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        title: 'Todoey Theme',
        theme: ThemeData(),
        home: TasksScreen(),
      ),
    );
  }
}
