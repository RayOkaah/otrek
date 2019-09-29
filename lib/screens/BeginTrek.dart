import 'package:flutter/material.dart';

class BeginTrekPage extends StatelessWidget {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(),
      /**
          appBar: PreferredSize(
          preferredSize: Size.fromHeight(185),
          child: AppBar(
          elevation: 50,
          //expandedHeight: 185,
          centerTitle: true,
          //pinned: true,
          title: Image.asset("assets/tinylogo.png", height: 30,),
          backgroundColor: Colors.black,
          flexibleSpace: FlexibleSpaceBar(

          //collapseMode: CollapseMode.none,
          background: Opacity(
          opacity: 0.3,
          child: Image.asset("assets/appbarBackground.png", fit: BoxFit.cover,)),
          title: Align(
          alignment: Alignment.bottomLeft,
          child: HeaderContent()
          ),
          centerTitle: true,
          titlePadding: EdgeInsets.only(left: 60, right: 60),
          ),
          ),
          ),
       */
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 50,
            expandedHeight: 185,
            centerTitle: true,
            //pinned: true,
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
          SliverToBoxAdapter(child: StartTrek()),
          /**
              SliverToBoxAdapter(
              child:
              Column(
              children: <Widget>[
              Expanded(
              flex: 0,
              child: Container(
              height: 400,
              color: Colors.lightBlue,
              child: Text("gold"),
              ),
              ),
              ],
              )
              )

           */
        ],
      ),
    );
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

class StartTrek extends StatefulWidget {
  StartTrek({Key key}) : super(key: key);

  @override
  _StartTrekState createState() => _StartTrekState();
}

class _StartTrekState extends State<StartTrek> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'One';
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Card(
              elevation: 50,
              child: Container(
                //height: 280,
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(top: 20, left: 30),
                      child: Text(
                        "From:",
                        style: TextStyle(color: Color(0xff707070)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color(0xffF3F3F3),
                      ),
                      height: 40,
                      child: Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Icon(
                                Icons.place,
                                color: Color(0xffD10F0F),
                              )),
                          Text("Current Location")
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(top: 10, left: 30),
                      child: Text(
                        "To:",
                        style: TextStyle(color: Color(0xff707070)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color(0xffF3F3F3),
                      ),
                      height: 40,
                      child: Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Icon(
                                Icons.place,
                                color: Color(0xffD10F0F),
                              )),
                          Text("Current Location")
                        ],
                      ),
                    ),

                    /**
                        Container(
                        //height: 40,
                        //width: 200,
                        child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),

                        underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                        ),

                        onChanged: (String newValue) {
                        setState(() {
                        dropdownValue = newValue;
                        });
                        },
                        items: <String>['One', 'Two', 'Three', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                        );
                        }).toList(),
                        ),
                        ),

                     */
                    Container(
                      //height: 50,
                      margin: EdgeInsets.only(right: 30, top: 10),
                      alignment: Alignment.bottomRight,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          color: Color(0xff15A4D1),
                          child: Text(
                            "Search",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {}),
                    ),
                    /**
                        Expanded(
                        flex: 0 ,
                        child: Container(
                        height: 200,
                        color: Colors.brown,
                        child: Text("bee"),
                        ),
                        )
                     */
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                height: 180,
                width: double.infinity,
                color: Colors.grey,
                //child: Text("bee"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
