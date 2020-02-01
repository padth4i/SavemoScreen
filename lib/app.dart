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
          title: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 35, maxWidth: 200),
              child: Image.asset('assets/images/savemo.png')),
          centerTitle: true,
          backgroundColor: backgroundColor,
          leading: Icon(Icons.arrow_back),
          elevation: 0,
        ),
        body: Stack(
          children: <Widget>[
            // Foreground(),
            Background(),
            Foreground()
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
