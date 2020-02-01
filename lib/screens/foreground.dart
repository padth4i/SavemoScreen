import 'package:flutter/material.dart';
import 'package:savemo_screen/utilities/constants.dart';
import 'package:savemo_screen/utilities/widgets.dart';

class Foreground extends StatefulWidget {
  Foreground({Key key}) : super(key: key);

  @override
  _ForegroundState createState() => _ForegroundState();
}

class _ForegroundState extends State<Foreground> {
  @override
  Widget build(BuildContext context) {
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
                  'Is this your monthly salary?',
                  style: mainTextStyle,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  customIconButton(4, Icons.remove, 20, 7),
                  Text(
                    '₹64300',
                    style: numberStyle,
                  ),
                  customIconButton(4, Icons.add, 20, 7),
                ],
              ),
              Padding(
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 12, right: 40, top: 15),
                        child: Text(
                            'Only 3.2% of India\'s total population earn greater than Rs.50000 per month!',
                            style: factTextStyle),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12, right: 10),
                        child: Align(
                          child: Text('#FactsThatMatter', style: factTextStyle),
                          alignment: Alignment.bottomRight,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: customIconButton(20, Icons.navigate_next, 25, 16),
                ),
              )
            ]),
      ),
    );
  }
}
