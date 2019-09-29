import 'package:expandable_card/expandable_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: new Drawer(),
        body: ExpandableCardPage(
          expandableCard: ExpandableCard(
            minHeight: 280,
            backgroundColor: Colors.white,
            hasRoundedCorners: true,
            children: <Widget>[isLoading ? TrekersLoading() : TrekersFound()],
          ),
          page: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                elevation: 50,
                expandedHeight: 185,
                centerTitle: true,
                title: Image.asset(
                  "assets/tinylogo.png",
                  height: 30,
                ),
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  background: Opacity(
                      opacity: 0.3,
                      child: Image.asset(
                        "assets/appbarBackground.png",
                        fit: BoxFit.cover,
                      )),
                  title: Align(
                      alignment: Alignment.bottomLeft, child: HeaderContent()),
                  centerTitle: true,
                  titlePadding: EdgeInsets.only(left: 60, right: 60),
                ),
                actions: <Widget>[
                  Container(
                    //color: Colors.white,
                    child: IconButton(
                        icon: Icon(
                          Icons.notifications,
                        ),
                        onPressed: () {}),
                  ),
                ],
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(top: 26, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "Current Location",
                        style: TextStyle(color: Color(0xff707070)),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Color(0xff707070),
                      ),
                      Text(
                        "Lekki Phase 2",
                        style: TextStyle(color: Color(0xff707070)),
                      ),
                      Icon(
                        Icons.settings,
                        color: Color(0xff707070),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class HeaderContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.bottomLeft,
        child: new ListTile(
          title: Text(
            "Hello Treker101",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "Where are you trekking to today",
            style: TextStyle(
                fontSize: 10, color: Colors.white, fontFamily: "Lato"),
          ),
          trailing: new CircleAvatar(
            child: Image.asset("assets/lady.png"),
          ),
        ),
      ),
    );
  }
}

class TrekersLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 20, top: 20),
          child: Text("Searching for people treking to your destination"),
        ),
        CircularProgressIndicator(),
      ],
    );
  }
}

class TrekersFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text("Trekking With LeggedizBenz24"),
          Container(
            width: 200,
            height: 50,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                CircleAvatar(
                  child: Image.asset("assets/lady.png"),
                ),
                Positioned(
                  right: 60,
                  child: CircleAvatar(
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
          Text("Meet Up Location : Mile 3 Park"),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.chat),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 3),
                      child: Text("Chat"),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.call),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 3),
                      child: Text("Call"),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.cancel),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 3),
                      child: Text("Cancel"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              onPressed: () {},
              child: Text(
                "I have arrived meetup location",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold),
              ),
              color: Color(0xff15A4D1),
            ),
          )
        ],
      ),
    );
  }
}
