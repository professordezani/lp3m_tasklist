import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tasklist/views/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const TaskListApp());
}