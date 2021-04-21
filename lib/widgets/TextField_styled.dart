import 'package:flutter/material.dart';

class TextFieldStyled extends StatelessWidget {

  String labelText;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: Container(
        height: 50,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: 'Title',
            border: OutlineInputBorder(),
          ),
        )
      )
    );
  }

  String getValue() {
    return controller.text;
  }
}