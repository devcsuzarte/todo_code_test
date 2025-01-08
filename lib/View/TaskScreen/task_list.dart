import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_code_test/View/TaskScreen/task_empty.dart';
import 'package:todo_code_test/ViewModel/task_data.dart';
import 'package:todo_code_test/View/TaskScreen/task_cell.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        if(taskData.taskList.isEmpty) {
          return Center(
            child: TaskEmpty(),
          );
        }
        return ListView.builder(
            itemBuilder: (context, index) {
              final task = taskData.taskList[index];
              return TaskCell(task: task);
            },
            itemCount: Provider.of<TaskData>(context, listen: false).taskList.length,
        );
      },
    );
  }
}
