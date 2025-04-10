import 'package:flutter/material.dart';
import 'package:tasklist/models/task.dart';
import 'dart:convert';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  List<Task> tasks = [];

  void obtemDados() {

    String dados = '[{"id": 1, "title": "task 1", "completed": false}]';

    List<Map<String, dynamic>> input = json.decode(dados);
    input[0]["title"];


    // List<Task> tasks = input.map((t) => Task.fromJson(t)).toList();
    // tasks[0].title;

    // List<Task> tasks = [];

    // for(var t in input) {
    //   Task task = Task.fromJson(t);
    //   tasks.add(task);
    // }
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task List")),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(context, "/create"),
      ),
    );
  }
}