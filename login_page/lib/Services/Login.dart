import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _email, _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            // alucard.jpg
            'assets/pexels3.jpeg',
            fit: BoxFit.cover,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/logo.png',
                  height: 70.0,
                  width: 70.0,
                ),
              ),
              Stack(
                children: <Widget>[
                  SingleChildScrollView(
                    child: Container(
                      height: 300.0,
                      width: 330.0,
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 30.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            child: TextField(
                              onChanged: (value) {
                                this.setState(() {
                                  _email = value;
                                });
                                debugPrint(_email);
                              },
                              autofocus: false,
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Enter your Email',

                                //border: InputBorder.none,
                                //filled: true,
                                //fillColor: Colors.grey[200],
                              ),
                            ),
                          ),
                          TextField(
                            onChanged: (value) {
                              this.setState(() {
                                _password = value;
                              });
                              debugPrint(_password);
                            },
                            autofocus: false,
                            obscureText: true,
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Enter your Password',

                              //border: InputBorder.none,
                              //filled: true,
                              //fillColor: Colors.grey[200],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Forgot password ?",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                      email: _email, password: _password)
                                  .then((onValue) {})
                                  .catchError((error) {
                                debugPrint("Error is :" + error);
                              });
                            },
                            color: Colors.blueAccent,
                            minWidth: 200,
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
