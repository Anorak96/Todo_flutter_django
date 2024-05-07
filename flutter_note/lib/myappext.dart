import 'package:flutter/material.dart';
import 'package:flutter_note/dialog_box.dart';
import 'package:flutter_note/note_tile.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class MyAppExt extends StatefulWidget {
  const MyAppExt({super.key});

  @override
  State<MyAppExt> createState() => _MyAppExtState();
}

class _MyAppExtState extends State<MyAppExt> {
  Client client = http.Client();

  List todoList = [
    ['Make a Task', false],
    ['Code Today', false],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  void _addNote() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Note App"),
        backgroundColor: const Color.fromARGB(98, 29, 26, 41),
      ),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return NoteTile(
              taskName: todoList[index][0],
              taskCompleted: todoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNote,
        tooltip: 'Add Note',
        backgroundColor: const Color.fromARGB(255, 3, 206, 233),
        child: const Icon(Icons.add, color: Colors.black,),
      ),
    );
  }
}
