import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title.toUpperCase(),
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Image(
            image: AssetImage('assets/images/the-battle-logo.png'),
          height: 100,
        )
      ),
    );
  }
}
