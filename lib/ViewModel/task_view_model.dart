import 'package:flutter/cupertino.dart';
import 'package:todo_code_test/Model/task_model.dart';
import 'package:todo_code_test/database.dart';

class TaskData extends ChangeNotifier {
  List<TaskModel> taskList = [];
  List<TaskModel> completedTasks = [];
  List<TaskModel> tasksSearchList = [];

  getTasksWithSearch(String searchText) {
    tasksSearchList = [];

    if(searchText.isNotEmpty) {
      for(TaskModel task in taskList) {
        if(task.title!.toUpperCase().contains(searchText.toUpperCase())) {
          tasksSearchList.add(task);
        }
      }
    } else {
      tasksSearchList = [];
    }

    notifyListeners();
  }

   getTasks() async {
    taskList = await TaskiDB().fetchTasks(0);
    tasksSearchList = [];
    getCompletedTasks();
    notifyListeners();
  }

  getCompletedTasks() async {
    completedTasks = await TaskiDB().fetchTasks(1);
    notifyListeners();
  }

  void addTask(TaskModel task) {
    TaskiDB().create(title: task.title!, note: task.note!, isDone: task.isDone!);
    notifyListeners();
    getTasks();
  }

  void toggleTaskOnDataBase(TaskModel task) {
     TaskiDB().update(task: task);
     getTasks();
  }

  void deleteTask(TaskModel task) {
     TaskiDB().delete(id: task.id!);
     getTasks();
  }
}