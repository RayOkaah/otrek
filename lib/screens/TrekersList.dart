import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';

class TrekersFoundScreen extends StatefulWidget {
  @override
  _TrekersFoundScreenState createState() => _TrekersFoundScreenState();
}

class _TrekersFoundScreenState extends State<TrekersFoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title: ListTile(
          title: Text("Trekkers (100+)"),
          subtitle: Text("Heading to Ojota"),
          trailing: Image.asset(
            "assets/icons/funnel.png",
            height: 20,
            width: 20,
          ),
        ),
      ),
      body: ListView.builder(
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
              subtitle: BuildStars(),
              trailing: Container(
                //height: 34,
                //width: 100,
                child: OutlineButton(
                  child: Text(
                    "Send Request",
                    style: TextStyle(color: Color(0xff15A4D1), fontSize: 12),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  color: Color(0xff15A4D1),
                  borderSide: BorderSide(
                    color: Color(0xff15A4D1),
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        opaque: false,
                        pageBuilder: (BuildContext context, _, __) =>
                            RequestSentDialog()));
                  },
                ),
              ),
            ),
          );
        },
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

class RequestSentDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.8),
      body: SafeArea(
        minimum: EdgeInsets.only(left: 70, right: 70),
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    "Trekking Request Sent",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 200,
                  height: 100,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50,
                        child: Image.asset("assets/lady.png"),
                      ),
                      Positioned(
                        right: 10,
                        child: CircleAvatar(
                          radius: 50,
                          child: Image.asset("assets/lady.png"),
                        ),
                      ),
                      /**
                          Positioned(
                          right: 40,
                          child: CircleAvatar(),
                          ),
                       */
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 15),
                  alignment: Alignment.center,
                  child: Text(
                    "We'll notify you when Leggedizbenz24 accepts your trekking request",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Lato",
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  //width: 153,
                  //height: 34,
                  child: OutlineButton(
                    child: Text(
                      "Got it",
                      style: TextStyle(
                          //color: Colors.white
                          fontSize: 12),
                    ),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    //color: Color(0xff15A4D1),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
