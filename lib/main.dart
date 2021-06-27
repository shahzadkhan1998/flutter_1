import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_1/HomePage.dart';
import 'package:flutter_app_1/LoginRegisterPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(BlogApp());
}

class BlogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Blog App",
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: LoginRegisterPage(),
      routes: {
        '/home': (_) => HomePage(),
      },
    );
  }
}
