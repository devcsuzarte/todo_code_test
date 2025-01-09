import 'package:flutter/material.dart';
import 'package:todo_code_test/view/task_screen/task_list.dart';
import 'greetings_widget.dart';


class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: GreetingsWidget()
          ),
          const Expanded(
              child: TaskList()
          ),
        ],
      ),
    );
  }
}
