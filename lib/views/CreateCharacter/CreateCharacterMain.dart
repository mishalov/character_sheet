import 'package:character_sheet/components/AppBar/CurrentAppBar.dart';
import 'package:flutter/material.dart';

class CreateCharacterMain extends StatefulWidget {
  CreateCharacterMain({Key key}) : super(key: key);

  @override
  CreateCharacterMainState createState() => CreateCharacterMainState();
}

class CreateCharacterMainState extends State<CreateCharacterMain> {
  String dropdownValue = '1';

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Text("Основные параметры"),
          TextField(
            decoration: InputDecoration(labelText: "Имя персонажа"),
          ),
          DropdownButton(
            value: dropdownValue,
            icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: [
              DropdownMenuItem(
                child: Text("Колдун"),
                value: "1",
              ),
              DropdownMenuItem(
                child: Text("Варвар"),
                value: "2",
              ),
              DropdownMenuItem(
                child: Text("Боец"),
                value: "3",
              ),
              DropdownMenuItem(
                child: Text("Паладин"),
                value: "4",
              ),
              DropdownMenuItem(
                child: Text("Волшебник"),
                value: "5",
              ),
            ],
          )
        ],
      ),
    );
  }
}
