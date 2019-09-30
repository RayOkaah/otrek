import 'package:flutter/material.dart';
import 'package:otrek/screens/Registration.dart';
import 'package:otrek/screens/TrekRoutesScreen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SafeArea(
            minimum: EdgeInsets.only(left: 36, right: 49, top: 120, bottom: 12),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Welcome Back",
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
                    child: Container(
                      margin: EdgeInsets.only(top: 12),
                      child: Text(
                        "Ready to start trekking? Log In to continue",
                        style: TextStyle(
                          color: Color(0xff707070),
                          fontFamily: "Lato",
                          fontSize: 16,
                        ),
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
                        "Log In",
                        style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TrekRoutesScreen()),
                        );
                      }),
                ),
                Container(
                  child: FlatButton(
                    onPressed: null,
                    child: Text(
                      "Forgot Your Password",
                      style: TextStyle(
                        fontFamily: "Lato",
                        color: Color(0xff15A4D1),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 1),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Text(
                          'Not yet an O-Treker?',
                          style: TextStyle(
                            fontFamily: "Lato",
                            color: Color(0xff707070),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationPage()),
                          );
                        },
                        child: Text(
                          "Create an Account",
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
