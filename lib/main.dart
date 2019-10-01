import 'package:character_sheet/bloc/bloc/app_bloc.dart';
import 'package:character_sheet/bloc/bloc/bloc.dart';
import 'package:character_sheet/components/AppBar/CurrentAppBar.dart';
import 'package:character_sheet/views/CreateCharacter/CreateCharacter.dart';
import 'package:character_sheet/views/MainScreen/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: {"/CreateCharacter": (context) => CreateCharacter()},
      home: BlocProvider<AppBloc>(
        child: MainScreen(),
        builder: (context) => AppBloc(),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     Navigator.push(
//         context, MaterialPageRoute(builder: (context) => CreateCharacter()));
//     // setState(() {
//     //   _counter++;
//     // });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Ваши персонажи")),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

/*
 * 
 * BlocBuilder<AppBloc, AppState>(
  *      builder: (context, state) {
  *        return Text(state.label);
  *      },
  *    )
 */
