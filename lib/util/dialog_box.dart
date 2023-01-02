import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
   DialogBox({super.key, required this.controller,  required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.purple[300],
      content: Container(
        height: 120,
        child: Column(children: [
          //get user input
          TextField(
            controller: controller,
            decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'добавить новую задачу'),
          ),
          //buttons - save or cacel
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(text: 'Save', onPressed: onSave),
              const SizedBox(width: 10,),
              MyButton(text: 'Cancel', onPressed: onCancel)
            ],
          )
          
        ]),
      ),
    );
  }
}
