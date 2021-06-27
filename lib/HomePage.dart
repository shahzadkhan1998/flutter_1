import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void logoutUser() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: new Container(),
      bottomNavigationBar: new BottomAppBar(
        color: Colors.pink,
        child: new Container(
          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new IconButton(
                icon:
                    Icon(Icons.local_car_wash, size: 30.0, color: Colors.white),
                onPressed: () {
                  logoutUser();
                },
              ),
              new IconButton(
                icon: Icon(Icons.add_a_photo, size: 30.0, color: Colors.white),
                onPressed: () {
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
