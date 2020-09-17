import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String textLabel;
  final Function onTap;
  final IconData btnIcon;
  final double width, height;
  final Color color;
  final Color textColor;
  final Color iconColor;
  const DefaultButton({
    Key key,
    @required this.textLabel,
    @required this.onTap,
    this.btnIcon,
    this.width,
    this.height,
    this.color,
    this.textColor,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 22.0),
        height: height ?? 35.0,
        width: width ?? 130.0,
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                textLabel,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: textColor ?? Colors.white),
              ),
            ),
            Icon(
              btnIcon ?? Icons.arrow_forward,
              size: 22.0,
              color: iconColor ?? Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class DefaultButton2 extends StatelessWidget {
  final String textLabel;
  final Function onTap;
  final double width;
  final Color color;
  final Color textColor;
  const DefaultButton2({
    Key key,
    @required this.textLabel,
    @required this.onTap,
    this.width,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 22.0),
        height: 45.0,
        width: width ?? 130.0,
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                textLabel,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w800, color: textColor ?? Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
