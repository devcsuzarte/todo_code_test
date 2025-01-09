import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../../view_model/task_view_model.dart';
import 'done_cell.dart';

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
