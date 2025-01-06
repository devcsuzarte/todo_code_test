import 'package:flutter/material.dart';

class CreateTaskScreen extends StatelessWidget {
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/create_task_background.png', height: 190,),
              Text('No results found'),
              TextButton(
                  onPressed: () {

                  },
                  child: Text('Create Task'),
              )
            ],
          ),
        ),
      ],
    );
  }
}
