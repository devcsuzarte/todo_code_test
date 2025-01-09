import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_code_test/constants.dart';
import '../create_task_screen/create_task_screen.dart';

class TaskEmpty extends StatelessWidget {
  const TaskEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/clipboard_image.png', height: 190,),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Text(
            'You have no task listed',
            style: kSubHeadingStyle,
          ),
        ),
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
          label: Text(
            'Create Task',
            style: kTextButtonLabel,
          ),
        )
      ],
    );
  }
}
