import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tasklist/views/app.dart';

const firebaseConfig = FirebaseOptions(
  apiKey: "AIzaSyBPLl-W1Z2a2yludyXwkrhgWQy0ZaumPVY",
  authDomain: "tasklist-lp3m2025-02.firebaseapp.com",
  projectId: "tasklist-lp3m2025-02",
  storageBucket: "tasklist-lp3m2025-02.firebasestorage.app",
  messagingSenderId: "326864103165",
  appId: "1:326864103165:web:b8d9243da107ef89f34094",
  measurementId: "G-DNW00SB9WK"
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseConfig);
  runApp(const TaskListApp());
}