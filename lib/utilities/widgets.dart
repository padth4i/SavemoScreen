import 'package:flutter/material.dart';
import 'package:savemo_screen/utilities/constants.dart';

class CustomIconButton extends StatelessWidget {
  final double borderRadius;
  final double padding;
  final IconData icon;
  final double iconSize;
  final Function onTap;

  const CustomIconButton(
      {Key key, this.borderRadius, this.padding, this.icon, this.iconSize, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: smBlue, width: 2.0),
          color: Color(0x00FFFFFF),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(borderRadius)),
      child: InkWell(
        //This keeps the splash effect within the circle
        borderRadius:
            BorderRadius.circular(12.0), //Something large to ensure a circle
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Icon(
            icon,
            size: iconSize,
            color: smBlue,
          ),
        ),
      ),
    );
  }
}
