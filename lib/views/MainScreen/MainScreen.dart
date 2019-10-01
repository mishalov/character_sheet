import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _counter = 0;

  void _incrementCounter() {
    Navigator.pushNamed(context, '/CreateCharacter');
    // setState(() {
    //   _counter++;
    // });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final List<Widget> characterCards = [];
    Widget body;

    for (var i = 0; i < _counter; i++) {
      characterCards.add(Card(
        child: ListTile(
            leading: Icon(MdiIcons.humanFemale),
            title: Text('ДЖЕННИ, колдун 1 ур.')),
      ));
    }

    if (characterCards.length == 0) {
      body = Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    text:
                        "У вас нет ни одного персонажа. \n Создайте его нажав на ",
                    children: [
                      TextSpan(
                          text: '+',
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]))
          ],
        ),
      );
    } else {
      body = ListView(children: characterCards);
    }

    return Scaffold(
      appBar: AppBar(title: Text("Ваши персонажи")),
      body: body,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
