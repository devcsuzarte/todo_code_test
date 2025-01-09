import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_code_test/View/search_screen/search_list.dart';
import 'package:todo_code_test/constants.dart';
import 'package:provider/provider.dart';
import '../../view_model/task_view_model.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchBarTextController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          TextField(
            decoration: kSearchInputDecoration.copyWith(
              suffix: InkWell(
                onTap: () {
                  searchBarTextController.text = '';
                  FocusScope.of(context).unfocus();
                  Provider.of<TaskData>(context, listen: false).getTasksWithSearch('');
                },
                child: Icon(
                    CupertinoIcons.clear_circled_solid,
                    size: 18,
                    color: kSecondaryColor,
                ),
              ),
            ),
            onChanged: (text) {
              Provider.of<TaskData>(context, listen: false).getTasksWithSearch(text);
            },
          ),
          Expanded(
              child: SearchList()
          )
        ],
      )
    );
  }
}
