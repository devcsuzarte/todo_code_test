import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_code_test/constants.dart';
import '../../view_model/task_view_model.dart';

class GreetingsWidget extends StatelessWidget {
  const GreetingsWidget({super.key});

  String subGreetingMessage(int tasksCounter){
    if (tasksCounter > 0) {
      return 'You\'ve got $tasksCounter tasks to do';
    } else {
      return 'Create tasks to achieve more.';
    }
  }

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
            Text(
              subGreetingMessage(Provider.of<TaskData>(context, listen: false).taskList.length),
              style: kDescriptionStyle,),
          ],
        );
      },
    );
  }
}


