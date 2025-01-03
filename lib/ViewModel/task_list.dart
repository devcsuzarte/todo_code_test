import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_code_test/Model/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemBuilder: (context, index) {
              final task = taskData.taskList[index];
              return Column(
                children: [
                  Text(task.title),
                  Text(task.note),
                ],
              );
            },
            itemCount: Provider.of<TaskData>(context, listen: false).taskList.length,
        );
      },
    );
  }
}
