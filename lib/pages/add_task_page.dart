import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loop/helpers/database_helper.dart';
import 'package:loop/models/task_model.dart';
import 'package:loop/widgets/DropDownButton_styled.dart';
import 'package:loop/widgets/TextField_styled.dart';

class AddTaskPage extends StatefulWidget {

  @override
  _AddTaskPageState createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final dbHelper = DatabaseHelper.instance;

  int priorityChoosed = 2;
  TextFieldStyled titleTextField = TextFieldStyled();
  TextFieldStyled descriptionTextField = TextFieldStyled();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create Text', style: TextStyle(fontSize: 40),),
              titleTextField,
              descriptionTextField,
              //DropDownButtonStyled(),
              TextButton(
                child: Text('Create'),
                style: ButtonStyle(),
                onPressed: () {
                  _insertTask(Task(
                    titleTextField.getValue(),
                    descriptionTextField.getValue(),
                    priorityChoosed,
                    false
                  ));
                },
              ),
            ]
          ),
        ),
      ),
    );
  }

  void _insertTask(Task task) {
    dbHelper.insertTask(task);
  }
}