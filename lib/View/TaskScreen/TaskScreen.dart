import 'package:flutter/material.dart';
import 'package:todo_code_test/View/TaskScreen/task_list.dart';
import 'package:todo_code_test/constants.dart';

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Welcome, ', style: kWelcomeTitle,),
                    Text('John', style: kUserNameTitle,),
                    Text('.', style: kWelcomeTitle,)
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text('You\'ve got 7 tasks to do', style: kDescriptionStyle,),
              ],
            ),
          ),
          Expanded(
              child: TaskList()
          ),
        ],
      ),
    );
  }
}
