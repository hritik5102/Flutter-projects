import 'package:flutter/material.dart';
import 'Services/Login.dart';
import 'Services/Logout.dart';
// firebase
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
      primarySwatch: Colors.lightBlue,
    );
    return MaterialApp(
      title: 'Login Page',
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: _windowDisplay(),
    );
  }
}

Widget _windowDisplay() {
  return StreamBuilder(
    stream: FirebaseAuth.instance.onAuthStateChanged,
    builder: (BuildContext context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return Center(
          child: Text('Loading...'),
        );
      } else {
        // if the user is logged in then it will go inside logout page i.e home page
        if (snapshot.hasData) {
          return Logout();
        } else {
          return Login();
        }
      }
    },
  );
}
