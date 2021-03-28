import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Profile Demo',
      home: new MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return new Stack(
      children: <Widget>[
        new Container(
          color: Colors.lightBlue,
        ),
        new Scaffold(
            appBar: new AppBar(
              title: new Text(widget.title),
              centerTitle: false,
              elevation: 0.0,
              backgroundColor: Colors.transparent,
            ),
            drawer: new Drawer(
              child: new Container(),
            ),
            backgroundColor: Colors.transparent,
            body: new Center(
              child: new Column(
                children: <Widget>[
                  new SizedBox(
                    height: _height / 12,
                  ),
                  new CircleAvatar(
                      radius: _width < _height ? _width / 4 : _height / 4,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/80153339?s=400&u=682eca3222ac53517c9e77dba6429a1ad2a878ff&v=4')),
                  new SizedBox(
                    height: _height / 25.0,
                  ),
                  new Text(
                    'Moh Reza Lesmana Kusuma',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: _width / 15,
                        color: Colors.white),
                  ),
                  new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new Container(
                          padding: EdgeInsets.all(5.0),
                          width: 300.0,
                          height: 35.0,
                          margin: EdgeInsets.all(10.0),
                          child: new Text(
                            ' Designer ',
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        new Container(
                          margin: EdgeInsets.all(5),
                          height: 1,
                          width: 80,
                          color: Colors.white,
                        ),
                        Card(
                            color: Colors.white,
                            margin: EdgeInsets.only(
                                left: 25, right: 25, top: 20, bottom: 10),
                            child: ListTile(
                                leading: Icon(
                                  Icons.phone,
                                  size: 30,
                                  color: Colors.amber[900],
                                ),
                                title: Text(
                                  '+6585863687409',
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.amber[900]),
                                ))),
                        Card(
                            color: Colors.white,
                            margin: EdgeInsets.only(
                                left: 25, right: 25, top: 0, bottom: 10),
                            child: ListTile(
                                leading: Icon(
                                  Icons.email,
                                  size: 30,
                                  color: Colors.amber[900],
                                ),
                                title: Text(
                                  'reza065118209@unpak.ac.id',
                                  style: TextStyle(
                                      fontSize: 17.0, color: Colors.amber[900]),
                                ))),
                        Card(
                            color: Colors.white,
                            elevation: 0.0,
                            margin: EdgeInsets.only(left: 25, right: 25),
                            child: ListTile(
                                leading: Icon(
                                  Icons.location_city,
                                  size: 30,
                                  color: Colors.amber[900],
                                ),
                                title: Text(
                                  'Sukabumi',
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.amber[900]),
                                ))),
                      ])
                ],
              ),
            ))
      ],
    );
  }
}
