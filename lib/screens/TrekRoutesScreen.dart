import 'package:flutter/material.dart';

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

  Map<String, dynamic> _routes = {
    "responseCode": "1",
    "responseText": "List categories.",
    "responseBody": [
      {"route_id": "1", "route_start": "BoriCamp", "route_end": "Choba"},
      {"route_id": "2", "route_start": "Choba", "route_end": "Alakahia"},
      {"route_id": "3", "route_start": "Cook", "route_end": "Sleep"},
      {"route_id": "4", "route_start": "Choba", "route_end": "Alakahia"},
      {"route_id": "5", "route_start": "Choba", "route_end": "Alakahia"},
      {"route_id": "6", "route_start": "Choba", "route_end": "Alakahia"},
      {"route_id": "7", "route_start": "Choba", "route_end": "Alakahia"},
      {"route_id": "8", "route_start": "Choba", "route_end": "Alakahia"},
      {"route_id": "9", "route_start": "Choba", "route_end": "Alakahia"},
      {"route_id": "10", "route_start": "Choba", "route_end": "Alakahia"},
      {"route_id": "11", "route_start": "Choba", "route_end": "Alakahia"},
      {"route_id": "12", "route_start": "Choba", "route_end": "Alakahia"},
      {"route_id": "13", "route_start": "Choba", "route_end": "Alakahia"},
      {"route_id": "14", "route_start": "Choba", "route_end": "Alakahia"},
      {"route_id": "15", "route_start": "Choba", "route_end": "Alakahia"},
      {"route_id": "16", "route_start": "Choba", "route_end": "Alakahia"},
    ],
    "responseTotalResult":
        16 // Total result is 3 here becasue we have 3 categories in responseBody.
  };

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
      appBar: new AppBar(
        title: new Text("go"),
      ),
      body: ListView.builder(
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
                    Text(_routes['responseBody'][index]['route_start']),
                    Icon(Icons.keyboard_arrow_right),
                    Text(_routes['responseBody'][index]['route_end'])
                  ],
                )
              ],
            );
          }),
    );
  }
}
