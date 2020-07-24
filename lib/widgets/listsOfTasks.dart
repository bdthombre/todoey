import 'package:flutter/material.dart';
import 'package:todoey/widgets/newTaskTile.dart';
import 'package:todoey/widgets/task.dart';

List<Task> tempList = [
  Task(taskName: "Buy Milk", isDone: false),
  Task(taskName: "Buy Bread", isDone: false),
  Task(taskName: "Buy Egg", isDone: false),
];

class ListOfTasks extends StatefulWidget {
  @override
  _ListOfTasksState createState() => _ListOfTasksState();
}

class _ListOfTasksState extends State<ListOfTasks> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: 40,
      ),
      itemCount: tempList.length,
      itemBuilder: (BuildContext context, int index) {
        return NewTaskTile(
          taskName: tempList[index].taskName,
          isChecked: tempList[index].isDone,
          checkboxChanged: (newValue) {
            setState(() {
              tempList[index].toggleDone();
            });
          },
        );
      },
    );
  }
}
