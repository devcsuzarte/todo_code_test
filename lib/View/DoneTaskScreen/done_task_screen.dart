import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_code_test/View/DoneTaskScreen/done_task_list.dart';
import 'package:todo_code_test/constants.dart';

class DoneTasksScreen extends StatelessWidget {
  const DoneTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Comleted Tasks',
                  style: kWelcomeTitle,
                ),
                TextButton(
                  onPressed: () {

                  },
                  child: Text(
                    'Delete all',
                    style: kDeleteAllButtonText,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: DoneTaskList(),
          ),
        ],
      ),
    );
  }
}
