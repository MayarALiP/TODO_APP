import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';
import 'package:todo/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = " ";
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        //
        //
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.amber,
              ),
            ),
            //
            //
            //
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            //
            //
            //
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.amberAccent),
              ),
              onPressed: () {
                Provider.of<TaskData>(context).addTask(newTaskTitle);
                Navigator.pop(context);

                // Provider.of<TaskData>(context).addTask(newTaskTitle);
                // Navigator.pop(context);
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
