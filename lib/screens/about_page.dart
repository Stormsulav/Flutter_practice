import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About App"),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "This is the app which is made by the fucking CEO of 'STORM ENTERPRISES' while learning flutter. It will help you to get shorcut keys while using MICROSOFT WORD!! ",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          RaisedButton(
            color: Colors.tealAccent,
            child: Text(
              "Go Back",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
