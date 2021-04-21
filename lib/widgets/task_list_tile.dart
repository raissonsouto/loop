import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loop/models/task_model.dart';

class TaskListTile extends StatelessWidget {

  Task task;

  TaskListTile({this.task});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.title),
      subtitle: Text(task.description),
    );
  }
}