import 'package:flutter/material.dart';
import 'package:otrek/screens/HomePage.dart';
import 'package:otrek/screens/Login.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SafeArea(
            minimum: EdgeInsets.only(left: 36, right: 49, top: 16),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      color: Color(0xff707070),
                      fontFamily: "Poppins",
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Get started and discover fellow trekkers",
                      style: TextStyle(
                        color: Color(0xff707070),
                        fontFamily: "Lato",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ],
            ),
          ),
          SafeArea(
            minimum: EdgeInsets.only(left: 36, right: 49, top: 18),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Username",
                    style: TextStyle(
                      color: Color(0xff707070),
                      fontFamily: "Lato",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 14),
                    height: 49,
                    width: 290,
                    child: TextField(
                      decoration: new InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Color(0xffF3F3F3),
                        prefixIcon: Icon(Icons.person),
                        filled: true,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SafeArea(
            minimum: EdgeInsets.only(left: 36, right: 49, top: 18),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Email Address",
                    style: TextStyle(
                      color: Color(0xff707070),
                      fontFamily: "Lato",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 14),
                    height: 49,
                    width: 290,
                    child: TextField(
                      decoration: new InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Color(0xffF3F3F3),
                        prefixIcon: Icon(Icons.email),
                        filled: true,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SafeArea(
            minimum: EdgeInsets.only(left: 36, right: 49, top: 18),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Mobile Number",
                    style: TextStyle(
                      color: Color(0xff707070),
                      fontFamily: "Lato",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 14),
                    height: 49,
                    width: 290,
                    child: TextField(
                      decoration: new InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Color(0xffF3F3F3),
                        prefixIcon: Icon(Icons.phone_android),
                        filled: true,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SafeArea(
            minimum: EdgeInsets.only(left: 36, right: 49, top: 18),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(
                      color: Color(0xff707070),
                      fontFamily: "Lato",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 14),
                    height: 49,
                    width: 290,
                    child: TextField(
                      decoration: new InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Color(0xffF3F3F3),
                        prefixIcon: Icon(Icons.lock),
                        filled: true,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 53,
                  width: 314,
                  margin: EdgeInsets.only(
                    top: 26,
                  ),
                  child: RaisedButton(
                      textColor: Colors.white,
                      color: Color(0xff15A4D1),
                      child: Text(
                        "Register",
                        style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Already an O-Treker?',
                        style: TextStyle(
                          fontFamily: "Lato",
                          color: Color(0xff707070),
                          fontSize: 16,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            fontFamily: "Lato",
                            color: Color(0xff15A4D1),
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
