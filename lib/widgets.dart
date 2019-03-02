import 'package:flutter/material.dart';
import 'variables.dart';
import 'graphs.dart';
import 'functions.dart';
//import 'package:fcharts/fcharts.dart';


class NavDrawer extends StatefulWidget {
  @override
  _NavDrawer createState() => _NavDrawer();
}

class _NavDrawer extends State<NavDrawer> {

  @override
  Widget build(BuildContext context) {
    return new Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              new DrawerHeader(
                  child: new Padding(
                    padding: EdgeInsets.fromLTRB(0.0,40.0,0.0,10.0),
                    child: new Column(
                      children: <Widget>[
                        new Expanded(
                          child: new Image.asset(
                            'assets/images/md.jpg',
                            height:80.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: new BoxDecoration(
                    color: Color.fromRGBO(36, 181, 114, 1),
                  )
              ),
              new ListTile(
                title: new Container(
                  height: 50.0,
                  child: new Row(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                            child: new Icon(
                                Icons.adjust,
                                color: homeColor,
                            ),
                          ),
                        ],
                      ),
                      new Expanded(
                          child: new Padding(
                            padding: EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 0.0),
                            child: new Text('Home',
                              style: new TextStyle(
                                  color: homeColor
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
                onTap: (){
                  thisPage = 'home';
                  sidebarColor(thisPage);
                  changePage(context, thisPage);
                },
              ),
              new ListTile(
                title: new Container(
                  height: 50.0,
                  child: new Row(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                            child: new Icon(
                                Icons.adjust,
                                color: categoriesColor,
                            ),
                          ),
                        ],
                      ),
                      new Expanded(
                          child: new Padding(
                            padding: EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 0.0),
                            child: new Text('Categories',
                              style: new TextStyle(
                                  color: categoriesColor
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
                onTap: (){
                  thisPage = 'categories';
                  sidebarColor(thisPage);
                  changePage(context, thisPage);
                },
              ),
              new ListTile(
                title: new Container(
                  height: 50.0,
                  child: new Row(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                            child: new Icon(
                                Icons.adjust,
                                color: aboutColor,
                            ),
                          ),
                        ],
                      ),
                      new Expanded(
                          child: new Padding(
                            padding: EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 0.0),
                            child: new Text('About',
                              style: new TextStyle(
                                  color: aboutColor
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
                onTap: (){
                  thisPage = 'about';
                  sidebarColor(thisPage);
                  changePage(context, thisPage);
                },
              ),
            ]
        )
    );
  }
}

myAppBarWidget(section){
  return AppBar(
    title: new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  section,
                  style: new TextStyle(
                      color: whiteBgColor,
                      fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            new Expanded(
                child: new Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                    child: Text(
                      '_',
                      style: new TextStyle(
                          color: whiteBgColor,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                )
            )
          ],
        )
      ],
    ),
    backgroundColor: appBg,
    centerTitle: true,
    iconTheme: new IconThemeData(
        color: whiteBgColor
    ),
  );
}

graph(){
  return showGraph();
}
