import 'package:flutter/material.dart';
import 'package:flutter_note/myappext.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Note Flutter App',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: 'Raleway'),
      home: MyAppExt(),
    );
  }
}