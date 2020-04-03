import 'package:flutter/material.dart';
import 'package:todo/screens/task_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          body1:TextStyle(
            color: Colors.white,
          )
        )
      ),
      title: 'To Do',
      home: TasksScreen(),
    );
  }
}