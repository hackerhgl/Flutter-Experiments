import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home Page'),
      ),
      body: new Container(
        child: new Row(
          children: <Widget>[
            new Text('hello'),
            new RaisedButton(
              child: new Text('buttre'),
              onPressed: () => Navigator.of(context).pushNamed('/screen'),
            ),
            new RaisedButton(
              child: new Text('Friendly Chat'),
              onPressed: () => Navigator.of(context).pushNamed('/friendlyChat'),
            ),
          ],
        ),
      ),
    );
  }
}