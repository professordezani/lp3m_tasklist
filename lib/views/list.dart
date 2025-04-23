// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {

  var db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task List")),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: db.collection('tasks').snapshots(),
        builder: (context, snapshot) {

          if(!snapshot.hasData)
            return Text("Carregando...");

          return Column(
            children: snapshot
              .data!.docs
              .map((doc) => Text(doc['title']))
              .toList(),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(context, "/create"),
      ),
    );
  }
}