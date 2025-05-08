import 'package:flutter/material.dart';
import 'package:tasklist/views/create.dart';
import 'package:tasklist/views/list.dart';
import 'package:tasklist/views/login.dart';
import 'package:tasklist/views/registro.dart';

class TaskListApp extends StatelessWidget {
  const TaskListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/list":(context) => ListPage(),
        "/create":(context) => CreatePage(),
        "/login":(context) => LoginPage(),
        "/registro":(context) => RegistroPage(),
      },
      initialRoute: "/login",
    );
  }
}