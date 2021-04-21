import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loop/helpers/database_helper.dart';
import 'package:loop/models/task_model.dart';
import 'package:loop/widgets/task_list_tile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
  
class _HomePageState extends State<HomePage> {

  final dbHelper = DatabaseHelper.instance;


  /*List<TaskListTile> _taskListGenerator() {

    List<TaskListTile> taskListTileList;

    for(Task task in _taskList)
      taskListTileList.add(TaskListTile(task: task));
  
    return taskListTileList;
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: dbHelper.getTaskList(),
        builder: (context, snapshot) {
          if(!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(itemBuilder: null);
        }
      )
    );
  }
}