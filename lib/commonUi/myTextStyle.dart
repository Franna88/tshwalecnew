import 'package:flutter/material.dart';

class MyTextStyle extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? textColor;
  final FontWeight? fontWeight;
  const MyTextStyle(
      {super.key,
      required this.text,
      this.fontSize,
      this.textColor, this.fontWeight,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: fontWeight == null ? FontWeight.normal : fontWeight,
          fontSize: fontSize == null ? 16 : fontSize,
          color: textColor == null ? Colors.black : textColor,
          height: 1),
    );
  }
}

