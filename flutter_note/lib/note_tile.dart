import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NoteTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  NoteTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.black,
              ),
              Text(
                taskName,
                style: TextStyle(
                  decoration: taskCompleted ? TextDecoration.lineThrough 
                   : TextDecoration.none
                ), 
              ),
              
            ],
          ),
        ));
  }
}
