import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savemo_screen/bloc/page_bloc.dart';
import 'package:savemo_screen/page.dart';
import 'package:savemo_screen/utilities/constants.dart';
import 'package:savemo_screen/utilities/widgets.dart';

class Foreground extends StatefulWidget {
  @override
  _ForegroundState createState() => _ForegroundState();
}

class _ForegroundState extends State<Foreground> {
  @override
  Widget build(BuildContext context) {
    final pageBloc = BlocProvider.of<PageBloc>(context);
    return BlocBuilder(
        bloc: pageBloc,
        builder: (context, state) {
          int _counter = 0;
          return Positioned(
            top: 80,
            left: (MediaQuery.of(context).size.width - 325) / 2.0,
            child: Container(
              padding: EdgeInsets.only(top: 30, left: 24, right: 24),
              height: 400,
              width: 325,
              decoration: BoxDecoration(
                  color: dialogBoxColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        state.page.question,
                        style: mainTextStyle,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CustomIconButton(
                          padding: 4,
                          icon: Icons.remove,
                          iconSize: 20,
                          borderRadius: 7,
                          onTap: () {
                            pageBloc.add(DecrementCounter());
                            // setState(() {
                            //   _counter -= 100;
                            // });
                          },
                        ),
                        Text(
                          state.page.initialAmount.toString(),
                          style: numberStyle,
                        ),
                        CustomIconButton(
                          padding: 4,
                          icon: Icons.add,
                          iconSize: 20,
                          borderRadius: 7,
                          onTap: () {
                            pageBloc.add(IncrementCounter());

                            // setState(
                            //   () {
                            //     print(state);
                            //     _counter += 100;
                            //   },
                            // );
                          },
                        ),
                      ],
                    ),
                    factBox(context, state.page),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: CustomIconButton(
                          padding: 20,
                          icon: Icons.navigate_next,
                          iconSize: 25,
                          borderRadius: 16,
                          onTap: () {
                            pageBloc.add(ChangePage());
                            _counter = state.page.initialAmount;
                          },
                        ),
                      ),
                    )
                  ]),
            ),
          );
        });
  }

  Widget factBox(BuildContext context, Page page) {
    return Padding(
      padding: EdgeInsets.only(top: 65),
      child: Container(
        height: 108,
        width: 394.6,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage('assets/images/oval.png'),
          ),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 8,
              left: 12,
              width: 190,
              child: Text(page.fact, style: factTextStyle),
            ),
            Positioned(
              bottom: 10,
              left: 150,
              child: Text('#FactsThatMatter', style: factTextStyle),
            ),
          ],
        ),
      ),
    );
  }
}
