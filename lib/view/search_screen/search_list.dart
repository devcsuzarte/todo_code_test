import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_model/task_view_model.dart';
import '../task_screen/task_cell.dart';
import '../task_screen/task_empty.dart';

class SearchList extends StatelessWidget {
  const SearchList({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        if(taskData.tasksSearchList.isEmpty) {
          return Center(
            child: TaskEmpty(),
          );
        }
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasksSearchList[index];
            return TaskCell(task: task);
          },
          itemCount: Provider.of<TaskData>(context, listen: false).tasksSearchList.length,
        );
      },
    );
  }
}
