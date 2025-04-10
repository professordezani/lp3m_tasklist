import 'package:flutter/material.dart';
import 'package:tasklist/views/create.dart';
import 'package:tasklist/views/list.dart';

class TaskListApp extends StatelessWidget {
  const TaskListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/list":(context) => const ListPage(),
        "/create":(context) => const CreatePage(),
      },
      initialRoute: "/list",
    );
  }
}