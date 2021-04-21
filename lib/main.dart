import 'package:flutter/material.dart';
import 'package:loop/pages/add_task_page.dart';
import 'package:loop/pages/all_tasks_page.dart';
import 'package:loop/pages/calendar_page.dart';
import 'package:loop/pages/home_page.dart';
import 'package:loop/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        initialIndex: 2,
        child: Scaffold(
          backgroundColor: Colors.grey,
          appBar: TabBar(
            labelPadding: EdgeInsets.only(top: 35),
            tabs: [
              Tab(icon: Icon(Icons.calendar_today)),
              Tab(icon: Icon(Icons.toc)),
              Tab(icon: Icon(Icons.topic)),
              Tab(icon: Icon(Icons.add)),
              Tab(icon: Icon(Icons.settings)),
            ],
          ), 
          body: TabBarView(
            children: [
              CalendarPage(),
              AllTasksPage(),
              HomePage(),
              AddTaskPage(),
              SettingsPage(),
            ],
          ),
        ),
      ),
    );
  }
}
