import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_code_test/View/TaskScreen/task_empty.dart';
import 'package:todo_code_test/ViewModel/task_view_model.dart';
import 'package:todo_code_test/View/TaskScreen/task_cell.dart';

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
