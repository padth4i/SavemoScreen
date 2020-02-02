import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savemo_screen/bloc/page_bloc.dart';
import 'package:savemo_screen/homepage.dart';


class Savemo extends StatefulWidget {
  Savemo({Key key}) : super(key: key);

  @override
  _SavemoState createState() => _SavemoState();
}

class _SavemoState extends State<Savemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<PageBloc>(
        create: (context) => PageBloc(),
        child: HomePage()
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
