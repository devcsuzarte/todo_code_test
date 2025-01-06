import 'package:flutter/material.dart';
import 'package:todo_code_test/constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          TextField(
            decoration: kSearchInputDecoration,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/create_task_background.png', height: 190,),
              Text('No results found'),
            ],
          ),
        ],
      ),
    );;
  }
}
