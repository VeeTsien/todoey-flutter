import 'package:flutter/material.dart';
import 'package:fluttertodoey/screens/add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: _Scrollable(),
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

class _Scrollable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverSafeArea(
            sliver: SliverAppBar(
              backgroundColor: Colors.redAccent,
              floating: true,
              elevation: 0,
              expandedHeight: 100,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(30),
                child: Text(
                  '1 tasks',
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
          SliverPadding(
            padding: EdgeInsets.only(top: 20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20))),
                    height: 1000,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              'task1',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            trailing: Checkbox(
                              value: false,
                              onChanged: (newText) {
                                print(newText);
                              },
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 20,
                            ),
                          ),
                          ListTile(
                            title: Text(
                              'task1',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            trailing: Checkbox(
                              value: false,
                              onChanged: (newText) {
                                print(newText);
                              },
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 20,
                            ),
                          ),
                          ListTile(
                            title: Text(
                              'task1',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            trailing: Checkbox(
                              value: false,
                              onChanged: (newText) {
                                print(newText);
                              },
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//
//Container(
//child: Column(
//children: <Widget>[
//Text(
//'task1',
//style: TextStyle(
//fontSize: 40,
//),
//),
//Text(
//'task1',
//style: TextStyle(
//fontSize: 40,
//),
//),
//Text(
//'task1',
//style: TextStyle(
//fontSize: 40,
//),
//),
//Text(
//'task1',
//style: TextStyle(
//fontSize: 40,
//),
//),
//Text(
//'task1',
//style: TextStyle(
//fontSize: 40,
//),
//),
//Text(
//'task1',
//style: TextStyle(
//fontSize: 40,
//),
//),
//Text(
//'task1',
//style: TextStyle(
//fontSize: 40,
//),
//),
//Text(
//'task1',
//style: TextStyle(
//fontSize: 40,
//),
//),
//Text(
//'task1',
//style: TextStyle(
//fontSize: 40,
//),
//),
//Text(
//'task1',
//style: TextStyle(
//fontSize: 40,
//),
//),
//Text(
//'task1',
//style: TextStyle(
//fontSize: 40,
//),
//),
//Text(
//'task1',
//style: TextStyle(
//fontSize: 40,
//),
//),
//Text(
//'task1',
//style: TextStyle(
//fontSize: 40,
//),
//),
//Text(
//'task1',
//style: TextStyle(
//fontSize: 40,
//),
//),
//Text(
//'task1',
//style: TextStyle(
//fontSize: 40,
//),
//),
//Text(
//'task1',
//style: TextStyle(
//fontSize: 40,
//),
//),
//Text(
//'task1',
//style: TextStyle(
//fontSize: 40,
//),
//),
//Text(
//'task1',
//style: TextStyle(
//fontSize: 40,
//),
//),
//],
//),
//),
