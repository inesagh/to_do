import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/models/task.dart';
import 'package:to_do/models/task_data.dart';
import 'package:to_do/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (BuildContext context, TaskData taskData, Widget? child) {
      return ListView.builder(
        itemCount: taskData.tasksCount,
        itemBuilder: (context, index) {
          final Task task = taskData.tasks[index];
          return TaskTile(
            name: task.name,
            isChecked: task.isChecked,
            onChanged: (value) {
              taskData.updateTask(task);
            },
            onLongPress: (){
              taskData.deleteTask(task);
            },
          );
        },
      );
    });
  }
}
