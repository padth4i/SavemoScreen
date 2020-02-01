import 'package:flutter/material.dart';
import 'package:savemo_screen/utilities/constants.dart';

class Foreground extends StatefulWidget {
  Foreground({Key key}) : super(key: key);

  @override
  _ForegroundState createState() => _ForegroundState();
}

class _ForegroundState extends State<Foreground> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
    );
  }
}