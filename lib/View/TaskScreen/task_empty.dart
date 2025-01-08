import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../CreateTaskScreen.dart';

class TaskEmpty extends StatelessWidget {
  const TaskEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/create_task_background.png', height: 190,),
        Text('You have no task listed'),
        TextButton.icon(
          style: TextButton.styleFrom(
            backgroundColor: Color(0xFFE5F2FF),
            foregroundColor: Colors.blueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            )
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => CreateTaskScreen(),
              enableDrag: true,
            );
            },
          icon: Icon(CupertinoIcons.plus),
          label: Text('Create Task'),
        )
      ],
    );
  }
}
