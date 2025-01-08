import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_code_test/constants.dart';
import 'package:todo_code_test/ViewModel/task_view_model.dart';

class GreetingsWidget extends StatelessWidget {
  const GreetingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<TaskData, int>(
      selector: (context, taskData) => taskData.taskList.length,
      builder: (context, length, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Text('Welcome, ', style: kWelcomeTitle,),
                Text('John', style: kUserNameTitle,),
                Text('.', style: kWelcomeTitle,)
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text('You\'ve got ${
                Provider
                    .of<TaskData>(context, listen: false)
                    .taskList
                    .length
            } tasks to do', style: kDescriptionStyle,),
          ],
        );
      },
    );
  }
}
