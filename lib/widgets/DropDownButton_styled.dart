import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownButtonStyled extends StatefulWidget {
  @override
  _DropDownButtonStyledState createState() => _DropDownButtonStyledState();
}

class _DropDownButtonStyledState extends State<DropDownButtonStyled> {

  int priorityChoosed;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DropdownButton(
                value: priorityChoosed,
                hint: Text('Select priority'),
                items: [
                  DropdownMenuItem(
                    child: Text("low"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("medium"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text("high"),
                    value: 3
                  ),
                ],
                onChanged: (newValue) {
                  setState(() {
                    priorityChoosed = newValue;
                  });
                } 
              ),
    );
  }
}