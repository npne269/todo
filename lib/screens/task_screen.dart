import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';
import 'package:todo/screens/add_task_screen.dart';
import 'package:todo/widget/task_list.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> task = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 30,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'TO DO',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
                ),
                Text(
                  '${task.length} Tasks',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TaskList(
                  tasks: task,
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) => AddTaskScreen((String value) {
              setState(() {
                task.add(Task(name: value));
              });
              Navigator.pop(context);
            }),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  function(String taskValue) {}
}
