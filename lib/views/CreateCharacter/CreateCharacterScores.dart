import 'package:flutter/material.dart';

class CreateCharacterScores extends StatefulWidget {
  CreateCharacterScores({Key key}) : super(key: key);

  @override
  CreateCharacterScoresState createState() => CreateCharacterScoresState();
}

class CreateCharacterScoresState extends State<CreateCharacterScores> {
  num classValue = 0;
  num backgroundValue = 0;

  Widget build(context) {
    return Container(
        alignment: Alignment.center,
        child: Padding(
            padding: new EdgeInsets.all(10.0),
            child: Column(children: <Widget>[Text("Второй экран")])));
  }
}
