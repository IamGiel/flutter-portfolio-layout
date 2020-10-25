import 'dart:ffi';
import 'dart:ui';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
      "Proje",
      "Cert",
      "Social",
      "Favs",
    ];
    var categories = ["Employer 1", "Employer 2", "Employer 3", "Employer 4"];
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
                      border: Border.all(color: Colors.white),
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
                    return index == 0
                        ? pills(tags: tags, index: index, color: Colors.red)
                        : pills(tags: tags, index: index, color: Colors.white);
                  })),
          // body section
          Expanded(
            child: Container(
              // height: double.infinity,
              // width: double.infinity,
              margin: EdgeInsets.only(top: 15, left: 0, right: 0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(34))),
              child: Container(
                // height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text("Empl: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ),
                    Container(
                        padding: EdgeInsets.only(right: 20, left: 20),
                        height: 40,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categories.length,
                          itemBuilder: (BuildContext context, int index) {
                            return index == 0
                                ? Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          categories[index],
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              color:
                                                  Colors.red.withOpacity(0.9),
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 5),
                                        CircleAvatar(
                                          radius: 2,
                                          backgroundColor: Colors.red[200],
                                        ),
                                        SizedBox(width: 5),
                                      ],
                                    ),
                                  )
                                : Container(
                                    child: Row(children: [
                                      SizedBox(width: 5),
                                      Text(categories[index],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300)),
                                      SizedBox(width: 5),
                                      CircleAvatar(
                                        radius: 2,
                                        backgroundColor: Colors.red[200],
                                      )
                                    ]),
                                  );
                          },
                        )),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            child: Container(
                                padding: EdgeInsets.only(right: 25, left: 25),
                                height: 200,
                                child: StaggeredGridView.countBuilder(
                                  crossAxisCount: 4,
                                  itemCount: 8,
                                  itemBuilder:
                                      (BuildContext context, int index) =>
                                          Container(
                                              color: Colors.green,
                                              child: Center(
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  child: Text('$index'),
                                                ),
                                              )),
                                  staggeredTileBuilder: (int index) =>
                                      StaggeredTile.count(
                                          2, index.isEven ? 2 : 1),
                                  mainAxisSpacing: 4.0,
                                  crossAxisSpacing: 4.0,
                                )
                                // child: StaggeredGridView.countBuilder(
                                //   crossAxisCount: 4,
                                //   itemCount: 8,
                                //   itemBuilder:
                                //       (BuildContext context, int index) =>
                                //           Container(
                                //     child: ClipRRect(
                                //       borderRadius:
                                //           BorderRadius.all(Radius.circular(12)),
                                //       child: Image.asset('assets/image1.png',
                                //           fit: BoxFit.cover),
                                //     ),
                                //   ),
                                //   staggeredTileBuilder: (int count) =>
                                //       StaggeredTile.count(4, 1),
                                //   mainAxisSpacing: 9,
                                //   crossAxisSpacing: 8,
                                // ),
                                ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(right: 12, left: 12),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(33),
                              ),
                            ),
                            height: 55,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.home,
                                  color: Colors.blueGrey.withOpacity(0.8),
                                ),
                                Icon(
                                  Icons.notifications,
                                  color: Colors.blueGrey.withOpacity(0.8),
                                ),
                                SizedBox(width: 33),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.blueGrey.withOpacity(0.8),
                                ),
                                Icon(
                                  Icons.person,
                                  color: Colors.blueGrey.withOpacity(0.8),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 23,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(35)),
                                  color: Colors.red.withOpacity(0.8)),
                              child: Icon(
                                Icons.add,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class pills extends StatelessWidget {
  const pills({
    Key key,
    @required this.index,
    @required this.tags,
    @required this.color,
  }) : super(key: key);

  final List<String> tags;
  final index;
  final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      padding: (EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 0)),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(35)),
          gradient: LinearGradient(
              colors: [Colors.black, Colors.white.withOpacity(0.4)],
              begin: Alignment.bottomRight,
              end: Alignment.centerLeft)),
      margin: EdgeInsets.only(right: 13),
      child: Text(
        tags[index],
        style: TextStyle(color: color),
      ),
    );
  }
}
