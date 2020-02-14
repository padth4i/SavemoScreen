import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:savemo_screen/bloc/page_bloc.dart';
import 'package:savemo_screen/homepage.dart';

import 'data/user_database.dart';

class Savemo extends StatefulWidget {
  Savemo({Key key}) : super(key: key);

  @override
  _SavemoState createState() => _SavemoState();
}

class _SavemoState extends State<Savemo> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider<PageBloc>(
          create: (BuildContext context) => PageBloc(),
        ),
        Provider<UserDatabase>(create: (_) => UserDatabase())
      ],
      child: MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
