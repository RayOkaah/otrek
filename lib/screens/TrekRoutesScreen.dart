import 'package:floating_search_bar/floating_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:otrek/models/TrekRoutes.dart';

class TrekRoutesScreen extends StatefulWidget {
  @override
  TrekRoutesScreenState createState() {
    return new TrekRoutesScreenState();
  }
}

class TrekRoutesScreenState extends State<TrekRoutesScreen> {
  List _selectedRoutes = List();
  int _maxAllowed = 5;
  bool _isCheckEnabled = true;
  Map<String, dynamic> _routes = TrekRoutes().dummyRoutesList;


  void _onCategorySelected(bool selected, category_id) {
    if (_selectedRoutes.length < _maxAllowed) {
      if (selected == true) {
        setState(() {
          _selectedRoutes.add(category_id);
        });
      } else {
        setState(() {
          _selectedRoutes.remove(category_id);
        });
      }
    } else {
      if (selected == true) {
        setState(() {
          //_isCheckEnabled = false;
          _selectedRoutes.remove(category_id);
        });
      } else {
        setState(() {
          _selectedRoutes.remove(category_id);
          //_isCheckEnabled = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 40),
            child: ListTile(
              title: Text("Trek Routes",
                style: TextStyle(
                    fontFamily: "Popins",
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xff707070)
                ),
              ),
              subtitle: Text("Port Harcourt",
                style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 16,
                    color: Color(0xff707070)
                ),
              ),
              trailing: Container(
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    textColor: Colors.white,
                    color: Color(0xff15A4D1),
                    child: Text(
                      "Save",
                      style: TextStyle(
                        fontFamily: "Lato",
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: (_selectedRoutes.length < _maxAllowed - 2) ?
                    null : () {}
                ),
              ),
            ),
          ),
          Expanded(
            child: FloatingSearchBar.builder(
              itemCount: _routes['responseTotalResult'],
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Checkbox(
                          tristate: true,
                          value: (_selectedRoutes.length > _maxAllowed)
                              ? () => null
                              : _selectedRoutes.contains(
                              _routes['responseBody'][index]['route_id']),
                          onChanged: _isCheckEnabled
                              ? (bool selected) {
                            _onCategorySelected(selected,
                                _routes['responseBody'][index]['route_id']);
                            print(_selectedRoutes.length.toString());
                            print(_selectedRoutes.toString());
                          }
                              : null,
                          //title: Text(_routes['responseBody'][index]['category_name']),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(_routes['responseBody'][index]['route_start'],
                            style: TextStyle(fontFamily: "Lato",
                                fontWeight: FontWeight.bold,
                                color: Color(0xff707070)),
                          ),
                          Icon(Icons.keyboard_arrow_right, size: 15,),
                          Text(_routes['responseBody'][index]['route_end'],
                            style: TextStyle(fontFamily: "Lato",
                                fontWeight: FontWeight.bold,
                                color: Color(0xff707070)),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
              trailing: Icon(Icons.search, color: Color(0xff15A4D1),),

              /**
                  decoration: InputDecoration.collapsed(
                  //hintText: "",
                  focusColor: Color(0xff15A4D1),
                  hoverColor: Color(0xff15A4D1),

                  ),
               */
            ),
          ),


          /**
              Expanded(
              flex: 1,
              child: ListView.builder(
              itemCount: _routes['responseTotalResult'],
              itemBuilder: (BuildContext context, int index) {
              return Row(
              children: <Widget>[
              Container(
              child: Checkbox(
              tristate: true,
              value: (_selectedRoutes.length > _maxAllowed)
              ? () => null
              : _selectedRoutes.contains(
              _routes['responseBody'][index]['route_id']),
              onChanged: _isCheckEnabled
              ? (bool selected) {
              _onCategorySelected(selected,
              _routes['responseBody'][index]['route_id']);
              print(_selectedRoutes.length.toString());
              print(_selectedRoutes.toString());
              }
              : null,
              //title: Text(_routes['responseBody'][index]['category_name']),
              ),
              ),
              Row(
              children: <Widget>[
              Text(_routes['responseBody'][index]['route_start'],
              style: TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold, color: Color(0xff707070)),
              ),
              Icon(Icons.keyboard_arrow_right, size: 15,),
              Text(_routes['responseBody'][index]['route_end'],
              style: TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold, color: Color(0xff707070)),
              )
              ],
              )
              ],
              );
              }),
              ),

           */
        ],
      ),
    );
  }
}
