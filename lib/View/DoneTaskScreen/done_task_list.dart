import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todo_code_test/View/DoneTaskScreen/done_cell.dart';
import 'package:todo_code_test/ViewModel/task_view_model.dart';

class DoneTaskList extends StatelessWidget {
  const DoneTaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
            itemBuilder: (context, index) {
              final task = taskData.completedTasks[index];
              return DoneCell(task: task);
            },
            itemCount: Provider.of<TaskData>(context, listen: false).completedTasks.length,
        );
      },
    );
  }
}
