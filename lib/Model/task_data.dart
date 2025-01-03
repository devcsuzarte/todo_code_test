import 'package:flutter/cupertino.dart';
import 'package:todo_code_test/Model/task_model.dart';

class TaskData extends ChangeNotifier {
  List<TaskModel> taskList = [
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
    TaskModel(
      title: 'Comprar queijo',
      note: 'Um queijinho minas pra fazer uma pão de queijo'
    ),
  ];
}