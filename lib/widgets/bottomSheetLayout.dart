import 'package:flutter/material.dart';
import 'package:todoey/widgets/listsOfTasks.dart';
import 'package:todoey/widgets/task.dart';

class BottomSheetLayout extends StatefulWidget {
  @override
  _BottomSheetLayoutState createState() => _BottomSheetLayoutState();
}

class _BottomSheetLayoutState extends State<BottomSheetLayout> {
  final _textFieldController = TextEditingController();

  void dispose() {
    _textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: <Widget>[
          Text(
            "ADD NEW TASK",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            controller: _textFieldController,
            autofocus: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FlatButton(
            color: Colors.lightBlueAccent,
            onPressed: () {
              //TODO add method to add the task into the tasklist for display
              tempList.add(
                Task(taskName: _textFieldController.text, isDone: false),
              );
              Navigator.pop(context);
            },
            child: Text(
              "ADD",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
