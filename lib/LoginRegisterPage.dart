import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginRegisterPage extends StatefulWidget {
  @override
  _LoginRegisterPageState createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  final _auth = FirebaseAuth.instance;

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Blog App"),
      ),
      body: Container(
        margin: EdgeInsets.all(35.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(
                  hintText: 'What do people call you?',
                  labelText: 'Email ',
                ),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              /////////////////////////////////////////password/////////////////////////
              TextField(
                decoration: const InputDecoration(
                  hintText: 'What do people call you?',
                  labelText: 'Password ',
                ),
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                obscureText: true,
              ),
              SizedBox(
                height: 20.0,
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                child: Text('Submit'),
                onPressed: () async {
                  try {
                    final user = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if (user != null) {
                      Navigator.pushNamed(context, "/home");
                    }
                  } catch (e) {
                    print(e);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
