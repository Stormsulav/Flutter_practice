import 'package:flutter/material.dart';
import '../data/data.dart';
import './about_page.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                color: Colors.tealAccent,
                child: Center(
                  child: Text("MS Word Guide",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                  ), 
                  ),
                ),
              ), 
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text("Home",
              style: TextStyle(
                fontSize: 15.0,
              ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return AboutPage();
                }
                ),
                );
              },
              leading: Icon(Icons.info),
              title: Text("About",
              style: TextStyle(
                fontSize: 15.0,
              ),
              ),
            ),
            ListTile(
              onTap: () {
                launch("https://play.google.com/store/apps/details?id=com.tencent.ig");
              },
              leading: Icon(Icons.star),
              title: Text("Rate",
              style: TextStyle(
                fontSize: 15.0,
              ),
              ),
            ),
            ListTile(
              onTap: () {
                Share.share("Hi download this app from https://play.google.com/store/apps/details?id=com.tencent.ig");
              },
              leading: Icon(Icons.share),
              title: Text("Share",
              style: TextStyle(
                fontSize: 15.0,
              ),
              ),
            ),
          ],
        ),
        ),
      appBar: AppBar(
        title: Text("MS WORD SHORTCUTS"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline), 
            iconSize: 30.0,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return AboutPage();
                }
                ),
              );
            },
            ),
        ],
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 2.0,
            );
          },
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 22.0,
                backgroundColor: Colors.tealAccent,
                child: Text(
                  "${index + 1}",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
                 ),
              ),
              title: Text(data [index] ["key"]), //data lai call garerw index number anusar key ko value haru lerako
              subtitle: Text(data [index] ["use"]), //same as above comment
            );
          },
          ),
      );
  }
}



