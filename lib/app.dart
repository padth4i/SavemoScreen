import 'package:flutter/material.dart';
import 'package:savemo_screen/utilities/constants.dart';

import 'screens/foreground.dart';
import 'screens/background.dart';

class Savemo extends StatefulWidget {
  Savemo({Key key}) : super(key: key);

  @override
  _SavemoState createState() => _SavemoState();
}

class _SavemoState extends State<Savemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //TODO: Fix alignment
          title: Center(child: Image.asset('assets/images/savemo.png', fit: BoxFit.cover,)),
          backgroundColor: backgroundColor,
          leading: Icon(Icons.arrow_back),
        ),
              body: Stack(
          children: <Widget>[
            Background(),
            Foreground()
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
