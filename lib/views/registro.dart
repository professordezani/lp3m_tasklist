// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegistroPage extends StatelessWidget {
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  var firebaseAuth = FirebaseAuth.instance;

  void registro(BuildContext context) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: txtEmail.text,
        password: txtSenha.text);

      Navigator.pushNamed(context, "/list");
    }
    on FirebaseAuthException catch(ex) {
      SnackBar snackBar = SnackBar(content: Text(ex.message!));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registro")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: txtEmail,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "E-mail",
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: txtSenha,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Senha",
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () => registro(context),
              child: Text("Registar"),
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}