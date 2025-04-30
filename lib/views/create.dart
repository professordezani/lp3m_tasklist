// ignore_for_file: use_key_in_widget_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  final txtTitle = TextEditingController();

  void save(BuildContext context) {
    final db = FirebaseFirestore.instance;

    db
      .collection('tasks')
      .add({
        "title": txtTitle.text,
        "completed" : false
      });

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("New Task")),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: txtTitle,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Nome da Task",
              ),
            )
          ),
          ElevatedButton(
            onPressed: () => save(context),
            child: const Text("Salvar"),
          )
        ],
      ),
    );
  }
}