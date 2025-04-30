// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, curly_braces_in_flow_control_structures

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {

  var db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task List")),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: db
          .collection('tasks')
          // .where("completed", isEqualTo: false)
          .orderBy("completed")
          .snapshots(),
        builder: (context, snapshot) {

          if(!snapshot.hasData)
            return const Text("Carregando...");

          return Column(
            children: snapshot
              .data!.docs
              .map((doc) => Dismissible(
                background: Container(color: Colors.red),
                onDismissed: (_) => doc.reference.delete(),
                key: Key(doc.id),
                child: CheckboxListTile(
                  value: doc['completed'],
                  onChanged: (value) => doc.reference.update({"completed": value}),
                  title: Text(doc['title'])),
              )
              )
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