import 'package:flutter/material.dart';
import 'package:todo/UIcomponents/tasks_list.dart';
import 'package:todo/screens/add_task.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class ToDoHome extends StatelessWidget {
  const ToDoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.amber[400],
        toolbarHeight: 120.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
        ),
        leading: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 2.5,
          ),
          child: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            radius: 25.0,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 22.0,
              child: Icon(
                Icons.list,
                color: Colors.amber,
                shadows: [
                  Shadow(color: Colors.black, offset: Offset(1.0, 1.5))
                ],
                size: 40,
              ),
            ),
          ),
        ),
        actions: [
          Text(
            '${Provider.of<TaskData>(context).taskCount} Tasks',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
        title: const Text('ToDo List'),
      ),
      //
      //
      //
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 2.5),
        decoration: BoxDecoration(
          color: Colors.amber[200],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0)),
        ),
        child: const TaskList(),
      ),
      //
      //
      //
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        mini: true,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const AddTask(),
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
