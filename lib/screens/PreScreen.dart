import 'package:flutter/material.dart';
import 'package:otrek/screens/Login.dart';
import 'package:otrek/screens/Registration.dart';

class PreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(title: const Text('Home')),
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.darken)),
      ),
      child: Column(
        children: <Widget>[
          Container(
              margin:
                  EdgeInsets.only(top: 100, left: 115, right: 115, bottom: 32),
              child: Center(
                child: Image.asset(
                  "assets/icons/logo.png",
                  height: 145,
                  width: 145,
                ),
              )),
          Container(
            margin: EdgeInsets.only(left: 133, right: 133, bottom: 5),
            child: Text(
              "OTrek",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 36, color: Colors.white),
            ),
          ),
          Text(
            "You'll Never Trek Alone",
            style: TextStyle(
                fontFamily: "Lato", fontSize: 16, color: Colors.white),
          ),
          Container(
            height: 53,
            width: 314,
            margin: EdgeInsets.only(top: 50, bottom: 10),
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                textColor: Colors.white,
                color: Color(0xff15A4D1),
                child: Text(
                  "Log in",
                  style: TextStyle(
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                }),
          ),
          Container(
            height: 53,
            width: 314,
            margin: EdgeInsets.only(
              top: 10,
            ),
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                textColor: Colors.white,
                color: Color(0xff0A323E),
                child: Text(
                  "Register",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationPage()),
                  );
                }),
          )
        ],
      ),
    ));
  }
}
