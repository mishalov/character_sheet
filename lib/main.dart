import 'package:character_sheet/components/AppBar/CurrentAppBar.dart';
import 'package:character_sheet/views/CreateCharacter/CreateCharacter.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
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
  int _counter = 0;

  void _incrementCounter() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CreateCharacter()));
    // setState(() {
    //   _counter++;
    // });
  }

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
      appBar: BaseAppBar(
        appBar: AppBar(),
      ),
      body: body,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
