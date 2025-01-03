import 'package:flutter/material.dart';
import 'package:todo_code_test/View/CreateTaskScreen.dart';
import 'package:todo_code_test/View/DoneTasksScreen.dart';
import 'package:todo_code_test/View/SearchScreen.dart';
import 'package:todo_code_test/View/TaskScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onTabTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
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
          children: [
            Icon(Icons.check_box),
            Text('Taski')
          ],
        ),
        actions: [
          Text('John'),
          SizedBox(
            width: 15,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
            ,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Todo'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'Create'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.check_box_outlined),
              label: 'Done'
            ),
          ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        onTap: _onTabTapped,
      ),
      body: _screens[_selectedIndex],
    );
  }
}
