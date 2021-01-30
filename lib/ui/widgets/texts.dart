import 'package:flutter/material.dart';

class TextFieldHeader extends StatelessWidget {

  final String text;
  final Color textColor;
  final FontWeight textWeight;
  final double textSize;

  const TextFieldHeader({
    @required this.text,
    this.textColor = Colors.white,
    this.textWeight = FontWeight.w500,
    this.textSize = 16.0,
  }) : assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontWeight: textWeight,
        fontSize: textSize,
      ),
    );
  }
}

class ClickableText extends StatelessWidget {

  final String text;
  final Function onClick;
  final Color textColor;
  final FontWeight textWeight;
  final double textSize;
  final bool underline;

  const ClickableText({
      @required this.text,
      @required this.onClick,
      this.textColor = Colors.white,
      this.textWeight = FontWeight.w500,
      this.textSize = 16.0,
      this.underline = true,
  }) : assert(text != null);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: onClick,
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(
          decoration: underline ? TextDecoration.underline : TextDecoration.none,
          color: textColor,
          fontWeight: textWeight,
          fontSize: textSize,
        ),
      ),
    );
  }
}

