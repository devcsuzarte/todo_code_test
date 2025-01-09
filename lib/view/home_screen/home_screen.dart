import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_code_test/view/done_task_screen/done_task_screen.dart';
import 'package:todo_code_test/view/search_screen/search_screen.dart';
import '../../view_model/task_view_model.dart';
import 'package:todo_code_test/constants.dart';
import 'package:provider/provider.dart';
import '../create_task_screen/create_task_screen.dart';
import '../task_screen/task_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<TaskData>(context, listen: false).getTasks();
  }
  int _selectedIndex = 0;
  void _onTabTapped(int index){
    if(index == 1) {
      print('CREATE TASK');
      showModalBottomSheet(
          context: context,
          builder: (context) => CreateTaskScreen(),
          enableDrag: true,
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  final List<Widget> _screens = [
    TaskScreen(),
    CreateTaskScreen(),
    SearchScreen(),
    DoneTasksScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.checkmark_square_fill,
              color: Colors.blueAccent,
              size: 32,
            ),
            SizedBox(
              width: 5,
            ),
            Text('Taski')
          ],
        ),
        actions: [
          Text('John', style: kUserNameNavBar,),
          SizedBox(
            width: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://img.freepik.com/free-photo/cheerful-positive-glad-man-has-broad-smile-rejoices-promotion-work_273609-16600.jpg?t=st=1736458855~exp=1736462455~hmac=09c9c7125faca0e23f11ea281c6da2ff74718f21e46ce19297a07d77215b545e&w=1060')
              ,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.list_bullet_below_rectangle),
              label: 'Todo'
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.plus_app),
              label: 'Create'
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search),
              label: 'Search'
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.checkmark_square),
              label: 'Done'
            ),
          ],
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        onTap: _onTabTapped,
      ),
      body: _screens[_selectedIndex],
    );
  }
}
