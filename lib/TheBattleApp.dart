import 'package:flutter/material.dart';
import 'package:the_battle/pages/AllCharactersPage.dart';

class TheBattleApp extends StatefulWidget {

  @override
  _TheBattleAppState createState() => _TheBattleAppState();
}

class _TheBattleAppState extends State<TheBattleApp>{
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Battle App',
      theme: ThemeData(
        fontFamily: 'Knewave-Regular',
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AllCharactersPage(),
    );
  }
}
