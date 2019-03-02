import 'package:flutter/material.dart';
import 'variables.dart';
import 'widgets.dart';
import 'functions.dart';
import 'graphs.dart';
import 'charts.dart';

class Dashboard extends StatefulWidget {
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(fontFamily: appFont),
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
            appBar: myAppBarWidget('Home'),
            drawer: NavDrawer(),
            body: new ListView(
            )
        ),
      ),
    );
  }
}

class Categories extends StatefulWidget {
  @override
  _Categories createState() => _Categories();
}

class _Categories extends State<Categories> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(fontFamily: appFont),
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
            appBar: myAppBarWidget('Categories'),
            drawer: NavDrawer(),
            body: new ListView.builder(
                itemCount: categories.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return new Padding(
                    padding: EdgeInsets.fromLTRB(10.0,0.0,10.0,0.0),
                    child: new Container(
                      color: whiteBgColor,
                      padding: EdgeInsets.symmetric(vertical: 7.0,horizontal: 15.0),
                      child: new Column(
                        children: <Widget>[
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Text(
                                    categories[index],
                                    style: new TextStyle(
                                        fontSize: 14.0,
                                        color: blackBgColor,
                                    ),
                                  ),
                                ],
                              ),
                              new Expanded(
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      new GestureDetector(
                                        onTap: (){
                                          print('we tapped to remove');
                                        },
                                        child: new Icon(
                                          Icons.cancel,
                                          color: Colors.red,
                                        ),
                                      )
                                    ],
                                  )
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  );
                }
            ),
            floatingActionButton: new FloatingActionButton(
              onPressed: (){
                addCategoryModal(context);
              },
              tooltip: 'Add Category',
              child: new Icon(Icons.add),
            ),
        ),
      ),
    );
  }
}

class About extends StatefulWidget {
  @override
  _About createState() => _About();
}

class _About extends State<About> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(fontFamily: appFont),
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
            appBar: myAppBarWidget('About'),
            drawer: NavDrawer(),
            body: new ListView(
              children: <Widget>[
                new Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  child: new Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
                    color: whiteBgColor,
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          appName,
                          style: new TextStyle(
                              fontSize: 20.0
                          ),
                        ),
                        new Text(
                          '$appVersion +$appBuildNumber',
                          style: new TextStyle(
                              fontSize: 15.0
                          ),
                        ),
                        spacerSmall(),
                        new Container(
                          decoration: BoxDecoration(
                            border: new Border(
                              top: BorderSide(color: smokeColor),
                            ),
                          ),
                        ),
                        spacerSmall(),
                        new Text(
                          'By $appOwner',
                          style: new TextStyle(
                              fontSize: 13.0
                          ),
                        ),
                        new Text(
                          'Email: $appOwnerEmail',
                          style: new TextStyle(
                              fontSize: 13.0
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}