import 'dart:developer';

import 'package:flutter/material.dart';

int count = 0;

void main() {
  runApp(MaterialApp(home: HomeScreen()));
}

incrementCount() {
  count++;
  String message = "Count : $count";
  log(message, name: "LOG");
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App Title"),
          centerTitle: true,
          backgroundColor: Colors.purple[500],
        ),
        body: Center(
            child: RaisedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.access_alarm, color: Colors.white),
              label: Text("Add alarm",
                  style: TextStyle(color: Colors.white, fontFamily: 'Sriracha')),
          color: Colors.purple[500],
        )),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.accessibility,
            color: Colors.white,
          ),
          onPressed: incrementCount(),
          backgroundColor: Colors.purple[500],
        ));
  }
}
