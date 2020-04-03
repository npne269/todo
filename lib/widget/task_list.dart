import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';
import 'package:todo/widget/task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  const TaskList({this.tasks});
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, item) {
        return TaskTile(
          title: widget.tasks[item].name,
          isChecked: widget.tasks[item].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.tasks[item].toogleDone();
            });
          },
        );
      },
    );
  }
}
