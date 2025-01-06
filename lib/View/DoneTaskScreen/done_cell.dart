import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_code_test/Model/task_model.dart';

class DoneCell extends StatelessWidget {
  const DoneCell({super.key, required this.task});
  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: CupertinoColors.systemGrey6),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(CupertinoIcons.checkmark_square_fill),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text('Desing use case page'),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
