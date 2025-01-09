import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_code_test/model/task_model.dart';
import 'package:todo_code_test/constants.dart';
import 'package:provider/provider.dart';
import '../../view_model/task_view_model.dart';

class TaskCell extends StatefulWidget {
  final TaskModel task;

  const TaskCell({super.key, required this.task});

  @override
  State<TaskCell> createState() => _TaskCellState();
}

class _TaskCellState extends State<TaskCell> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.task.showNote) {
          setState(() {
            widget.task.toggleShowDescription();
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: CupertinoColors.systemGrey6),
          child: ListTile(
            title: Row(
              children: [
                CupertinoCheckbox(
                    value: widget.task.isDone == 1 ? true : false,
                    onChanged: (value) {
                      setState(() {
                        widget.task.toggleIsDone();
                        Timer(Duration(seconds: 1), () {
                          Provider.of<TaskData>(context, listen: false)
                              .toggleTaskOnDataBase(widget.task);
                        });
                      });
                    }),
                Text(
                  widget.task.title!,
                  style: kTaskTitleStyle,
                ),
              ],
            ),
            subtitle: widget.task.showNote
                ? Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Text(
                      widget.task.note!,
                      style: kDescriptionStyle,
                    ),
                  )
                : null,
            trailing: widget.task.showNote
                ? null
                : IconButton(
                    onPressed: () {
                      setState(() {
                        widget.task.toggleShowDescription();
                      });
                    },
                    icon: Icon(CupertinoIcons.ellipsis)),
          ),
        ),
      ),
    );
  }
}
