import 'package:flutter/material.dart';
import 'variables.dart';
import 'pages.dart';
import 'functions.dart';

sidebarColor(page){
  if(page == 'home'){
    homeColor = activeSidebar;
  }
}

changePage(context,page){
  print(page);
  print(currentPage);
  if(currentPage != page){
    resetActiveSidebar();
    if(page == 'home'){
      homeColor = activeSidebar;
      currentPage = 'home';
      Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => new Dashboard()
        ),
      );
    }
    if(page == 'categories'){
      categoriesColor = activeSidebar;
      currentPage = 'categories';
      Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => new Categories()
        ),
      );
    }
    if(page == 'about'){
      aboutColor = activeSidebar;
      currentPage = 'about';
      Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => new About()
        ),
      );
    }
  }
}

spacerSmall(){
  return new Padding(
    padding: EdgeInsets.all(10.0),
  );
}

resetActiveSidebar(){
  homeColor = defaultSidebar;
  aboutColor = defaultSidebar;
  inColor = defaultSidebar;
  categoriesColor = defaultSidebar;
}

appInfo() async{
  PackageInfo packageInfo = await PackageInfo.fromPlatform();

  appVersion = packageInfo.version;
  appBuildNumber = packageInfo.buildNumber;
}

formatDate(date){
  if(date != null && date != ''){
    var split = date.split(' ');
    print(split);
    return split[0];
  }
}

void addCategoryModal(context){
  showDialog(
      context: context,
      builder: (BuildContext context){
        return new Center(
          child: new Container(
            child: new AlertDialog(
              title: new Text('Add category'),
              content: new Column(
                children: <Widget>[
                  new Form(
                    key: formKey,
                    autovalidate: true,
                    child: new Column(
                        children: <Widget>[
                          new Padding(
                            padding: const EdgeInsets.symmetric(vertical:5.0,horizontal:10.0),
                            child:
                            new TextFormField(
                              decoration: const InputDecoration(
                                //icon: const Icon(Icons.email),
                                hintText: 'Enter new category',
                                labelText: 'New Category',
                              ),
                              onSaved: (value) => newCat = value,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'New Category is required';
                                };
                                newCat = value;
                              },
                            ),
                          ),
                          new Padding(
                            padding: EdgeInsets.all(5.0),
                            child: new FlatButton(
                                color: purpleTextColor,
                                onPressed: (){
                                  addCategory();
                                },
                                child: new Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Padding(
                                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                                      child: new Text(
                                        'Add Category',
                                        style: new TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                            ),
                          ),
                        ]
                    ),
                  )
                ],
              ),
              actions: <Widget>[
              ],
            ),
          )
        );
      }
  );
}

addCategory(){
  preloader(' loading...');
  print(newCat);
}
