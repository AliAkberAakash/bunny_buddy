import 'package:flutter/material.dart';

class RoundedCornerButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final double textSize;
  final Function onClick;
  final Color backgroundColor;
  final double borderRadius;
  final double paddingVertical;
  final double elevation;

  const RoundedCornerButton({
    @required this.textColor,
    @required this.backgroundColor,
    @required this.text,
    @required this.onClick,
    this.borderRadius = 20.0,
    this.paddingVertical = 15.0,
    this.textSize = 20,
    this.elevation = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.symmetric(vertical: paddingVertical),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          //side: BorderSide(color: Colors.red)
        ),
        elevation: elevation,
        color: backgroundColor,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: textSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: onClick,
      ),
    );
  }
}

class TextButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final double textSize;
  final Function onClick;
  final Color backgroundColor;
  final double borderRadius;
  final double paddingVertical;
  final double elevation;

  const TextButton({
    this.textColor,
    this.backgroundColor,
    @required this.text,
    @required this.onClick,
    this.borderRadius = 20.0,
    this.paddingVertical = 15.0,
    this.textSize = 20,
    this.elevation = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: paddingVertical),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          //side: BorderSide(color: Colors.red)
        ),
        color: backgroundColor,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: textSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: onClick,
      ),
    );
  }
}
