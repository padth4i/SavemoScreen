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
      child: Stack(
        children: <Widget>[
          Align(
            child: dotGrid(),
            alignment: Alignment.topLeft,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 250),
            child: Align(
              child: circleShape(),
              alignment: Alignment.bottomRight,
            ),
          )
        ],
      ),
    );
  }

  Widget dotGrid() {
    return SizedBox(
      width: 150,
      height: 180,
      child: GridView.builder(
          itemCount: 48,
          itemBuilder: (context, index) => Container(
                decoration:
                    BoxDecoration(color: dotPatternColor, shape: BoxShape.circle),
              ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8, crossAxisSpacing: 10, mainAxisSpacing: 10)),
    );
  }

  Widget circleShape() {
    return SizedBox.shrink(
          child: Container(
        child: new CustomPaint(
          painter: HalfCirclePainter(),
        ),
      ),
    );
  }
}

class HalfCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.height / 2, size.width / 2), radius: 250),
        1.57,
        3.14,
        false,
        customPaint());
  }

  Paint customPaint() {
    Paint paint = Paint();
    paint.color = circleColor;
    return paint;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
