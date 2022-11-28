import 'package:flutter/material.dart';
import 'package:todo/screens/home.dart';
import 'package:todo/models/task_data.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyAPP());

class MyAPP extends StatelessWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        theme: ThemeData(),
        home: const ToDoHome(),
      ),
    );
  }
}
