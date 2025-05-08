// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
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
              onPressed: (){},
              child: Text("Login"),
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, "/registro"),
              child: Text("Registre-se"),
            )
          ],
        ),
      ),
    );
  }
}