import 'package:character_sheet/components/AppBar/CurrentAppBar.dart';
import 'package:character_sheet/views/CreateCharacter/CreateCharacterMain.dart';
import 'package:flutter/material.dart';

class CreateCharacter extends StatefulWidget {
  CreateCharacter({Key key}) : super(key: key);

  @override
  CreateCharacterState createState() => CreateCharacterState();
}

class CreateCharacterState extends State<CreateCharacter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        appBar: AppBar(),
      ),
      body: CreateCharacterMain(),
    );
  }
}
