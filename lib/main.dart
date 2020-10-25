import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var tags = [
      "Empl",
      "Edu",
      "Jobs",
      "Cert",
      "Social",
      "Favs",
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text(widget.title),
        elevation: 0,
        backgroundColor: Colors.red.withOpacity(0.8),
        actions: [
          Padding(
            padding: EdgeInsets.all(18),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // name section
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28, top: 7),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/profilePhoto.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38, top: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Gel DeAsis",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.white)),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red[200],
                            size: 17,
                          ),
                          Text(
                            "Garner, NC",
                            style: TextStyle(
                                color: Colors.white,
                                wordSpacing: 2,
                                letterSpacing: 4),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          // following section
          Padding(
            padding:
                const EdgeInsets.only(right: 38, left: 38, top: 15, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "17k",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    )
                  ],
                ),
                Container(
                  color: Colors.white,
                  width: 1,
                  height: 22,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "20k",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Text(
                      "Following",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    )
                  ],
                ),
                Container(
                  color: Colors.white,
                  width: 1,
                  height: 22,
                ),
                Container(
                  padding:
                      (EdgeInsets.only(left: 28, right: 20, top: 5, bottom: 5)),
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                      gradient: LinearGradient(
                          colors: [
                            Colors.red[300],
                            Colors.red.withOpacity(0.4)
                          ],
                          begin: Alignment.bottomRight,
                          end: Alignment.centerLeft)),
                  child: Text(
                    "Follow",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          // Tags section
          Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              height: 30,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tags.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 10,
                      padding: (EdgeInsets.only(
                          left: 20, right: 20, top: 5, bottom: 0)),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.all(Radius.circular(35)),
                          gradient: LinearGradient(
                              colors: [
                                Colors.black,
                                Colors.white.withOpacity(0.4)
                              ],
                              begin: Alignment.bottomRight,
                              end: Alignment.centerLeft)),
                      margin: EdgeInsets.only(right: 13),
                      child: Text(
                        tags[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  })),
          // body section
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 15, left: 10, right: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(34))),
            ),
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
