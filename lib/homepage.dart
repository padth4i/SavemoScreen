import 'package:flutter/material.dart';
import 'package:savemo_screen/screens/background.dart';
import 'package:savemo_screen/screens/foreground.dart';
import 'package:savemo_screen/utilities/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
