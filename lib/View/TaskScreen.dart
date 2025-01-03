import 'package:flutter/material.dart';
import 'package:todo_code_test/ViewModel/task_list.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text('Welcome, John'),
            Text('You\'ve got 7 tasks to do'),
          ],
        ),
        Expanded(
            child: TaskList()
        ),
      ],
    );
  }
}
