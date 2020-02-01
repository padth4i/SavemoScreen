import 'package:flutter/material.dart';
import 'package:savemo_screen/utilities/constants.dart';

class Background extends StatefulWidget {
  Background({Key key}) : super(key: key);

  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
    );
  }
}