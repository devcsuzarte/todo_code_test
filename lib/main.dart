import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_code_test/ViewModel/task_data.dart';
import 'package:todo_code_test/View/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => TaskData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true,
        ),
        home: HomeScreen(),
      ),
    );
  }
}