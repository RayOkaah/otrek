import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';

class LeaderBoardScreen extends StatefulWidget {
  @override
  _LeaderBoardScreenState createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          title: Text(
            "Trekkers LeaderBoard",
            style: TextStyle(color: Colors.black),
          )),
      body: Column(
        children: <Widget>[
          /**

              Container(
              margin: EdgeInsets.only(right: 15, left: 15),
              //width: 50,
              height: 50,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Text("Week 24"),
              Container(
              alignment: Alignment.center,
              // color: Color(0xff15A4D1),
              width: 40,
              height: 20,
              child: FlatButton(
              color: Color(0xff15A4D1),
              child: Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.green,
              size: 25,
              ),
              ),
              onPressed: () {}),
              ),
              Container(
              color: Color(0xff15A4D1),
              child: FlatButton(
              child: Icon(
              Icons.keyboard_arrow_right,
              size: 1,
              ),
              onPressed: () {}),
              ),
              ],
              ),
              ),

           */
          ListTile(
            leading: Text("User"),
            trailing: Text("Distance Treked"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return AnimatedCard(
                  direction: AnimatedCardDirection.left,
                  //duration: Duration(seconds: 2),
                  //initDelay: Duration(milliseconds: 20000),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset("assets/lady.png"),
                    ),
                    title: Text("Legedizbenz24"),
                    subtitle: Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.cake,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 2),
                              child: Text("Pro Treker"))
                        ],
                      ),
                    ),
                    trailing: Container(
                      //height: 34,
                      //width: 100,
                      child: OutlineButton(
                        child: Text(
                          "Send Request",
                          style:
                              TextStyle(color: Color(0xff15A4D1), fontSize: 12),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        color: Color(0xff15A4D1),
                        borderSide: BorderSide(
                          color: Color(0xff15A4D1),
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class BuildStars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(
            Icons.star,
            color: Color(0xffECC00D),
            size: 15,
          ),
          Icon(
            Icons.star,
            color: Color(0xffECC00D),
            size: 15,
          ),
          Icon(
            Icons.star,
            color: Color(0xffECC00D),
            size: 15,
          ),
          Icon(
            Icons.star,
            color: Color(0xffECC00D),
            size: 15,
          ),
          Icon(
            Icons.star,
            color: Color(0xffECC00D),
            size: 15,
          ),
        ],
      ),
    );
  }
}
