import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function callBackAddFunction;
  AddTaskScreen(this.callBackAddFunction);
  @override
  Widget build(BuildContext context) {
    String newTask;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'ADD Text',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value){
                newTask = value;
              },
            ),
            FlatButton(
              onPressed: callBackAddFunction(newTask),
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
