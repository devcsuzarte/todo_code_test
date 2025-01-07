import 'package:flutter/cupertino.dart';
import 'package:todo_code_test/Model/task_model.dart';
import 'package:todo_code_test/database.dart';

class TaskData extends ChangeNotifier {
  List<TaskModel> taskList = [
    TaskModel(
      title: 'Comprar queijo',
      note: 'Um queijinho minas pra fazer uma pão de queijo gostosinho no azeite, isso é bom, isso é muito bão, não tem base não sorr'
    ),
    TaskModel(
      title: 'Comprar queijo',
      note: 'Um queijinho minas pra fazer uma pão de queijo'
    ),
    TaskModel(
      title: 'Comprar queijo',
      note: 'Um queijinho minas pra fazer uma pão de queijo'
    ),
    TaskModel(
      title: 'Comprar queijo',
      note: 'Um queijinho minas pra fazer uma pão de queijo'
    ),
  ];

  void getTasks() async {
    taskList = await TaskiDB().fetchAll;
    notifyListeners();
  }

  void addTask(TaskModel task) {
    TaskiDB().create(title: task.title!, note: task.note!, isDone: task.isDone!);
    getTasks();
  }
}