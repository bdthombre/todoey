import 'package:flutter/material.dart';

class NewTaskTile extends StatelessWidget {
  final String taskName;
  final bool isChecked;
  final Function checkboxChanged;

  NewTaskTile({@required this.taskName, this.isChecked, this.checkboxChanged});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        taskName,
        style: TextStyle(
          fontSize: 20,
          decorationColor: Colors.black87,
          decorationThickness: 2,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxChanged,
      ),
    );
  }
}
