import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_code_test/Model/task_model.dart';
import 'package:todo_code_test/ViewModel/task_data.dart';
import 'package:todo_code_test/constants.dart';
import 'package:provider/provider.dart';

class CreateTaskScreen extends StatelessWidget {
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    String title = '';
    String note = '';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 30),
      child: Column(
        children: [
          Center(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: kCreateTaskInputDecoration.copyWith(
                      prefixIcon: Icon(
                        CupertinoIcons.square,
                        color: Colors.grey,
                      ),
                      hintText: 'What\'s in your mind?'
                    ),
                    textInputAction: TextInputAction.next,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return '*';
                      } else {
                        title = value;
                      }
                    },
                  ),
                  TextFormField(
                    decoration: kCreateTaskInputDecoration.copyWith(
                      prefixIcon: Icon(
                        CupertinoIcons.pen,
                        color: Colors.grey,
                      ),
                      hintText: 'Add a note'
                    ),
                    textInputAction: TextInputAction.next,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return '*';
                      } else {
                        note = value;
                      }
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              final form = formkey.currentState!;
                              if (form.validate()) {
                                var newTask = TaskModel(title: title, note: note);
                                Provider.of<TaskData>(context, listen: false).addTask(newTask);
                                form.reset();
                                Navigator.pop(context);
                              }
                            },
                            child: Text(
                              'Create',
                              style: kCreateTaskTitle,
                            ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
