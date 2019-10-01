import 'package:character_sheet/components/AppBar/CurrentAppBar.dart';
import 'package:flutter/material.dart';

class _DropdownItemStructure {
  String title = "";
  num value = 0;

  _DropdownItemStructure(String title, num value) {
    this.title = title;
    this.value = value;
  }
}

final classes = [
  new _DropdownItemStructure("Паладин", 0),
  new _DropdownItemStructure("Боец", 1),
  new _DropdownItemStructure("Колдун", 2),
  new _DropdownItemStructure("Бард", 3),
  new _DropdownItemStructure("Плут", 4),
  new _DropdownItemStructure("Волшебник", 5),
];

final backgrounds = [
  new _DropdownItemStructure("Прислужник", 0),
  new _DropdownItemStructure("Шарлатан", 1),
  new _DropdownItemStructure("Преступник", 2),
  new _DropdownItemStructure("Артист", 3),
  new _DropdownItemStructure("Народный Герой", 4),
  new _DropdownItemStructure("Благородный", 5),
  new _DropdownItemStructure("Чужеземец", 6),
  new _DropdownItemStructure("Отшельник", 7),
  new _DropdownItemStructure("Мудрец", 8),
  new _DropdownItemStructure("Моряк", 9),
  new _DropdownItemStructure("Солдат", 10),
  new _DropdownItemStructure("Беспризорник", 11),
];

class CreateCharacterMain extends StatefulWidget {
  CreateCharacterMain({Key key}) : super(key: key);

  @override
  CreateCharacterMainState createState() => CreateCharacterMainState();
}

class CreateCharacterMainState extends State<CreateCharacterMain> {
  num classValue = 0;
  num backgroundValue = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Padding(
          padding: new EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              TextField(
                  decoration: InputDecoration(labelText: "Имя персонажа")),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: <Widget>[
                    Text("Класс персонажа"),
                    Spacer(),
                    DropdownButton(
                        value: classValue,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        onChanged: (num newValue) {
                          setState(() {
                            classValue = newValue;
                          });
                        },
                        items: classes
                            .map((singleClass) => DropdownMenuItem(
                                  child: Text(singleClass.title),
                                  value: singleClass.value,
                                ))
                            .toList())
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: <Widget>[
                    Text("Предыстория"),
                    Spacer(),
                    DropdownButton(
                        value: backgroundValue,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        onChanged: (num newValue) {
                          setState(() {
                            backgroundValue = newValue;
                          });
                        },
                        items: backgrounds
                            .map((singleClass) => DropdownMenuItem(
                                  child: Text(singleClass.title),
                                  value: singleClass.value,
                                ))
                            .toList())
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(children: <Widget>[
                    RaisedButton(
                      textTheme: ButtonTextTheme.primary,
                      color: Colors.blueAccent,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text("Продолжить"),
                      ),
                      onPressed: () => {},
                    )
                  ]))
            ],
          )),
    );
  }
}
