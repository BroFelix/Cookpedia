import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static const TextStyle textStyle1 = TextStyle(
    color: Colors.black,
    fontSize: 16.0,
    fontStyle: FontStyle.normal,
    fontFamily: 'Cera Pro',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle textStyle2 = TextStyle(
    color: Colors.black,
    fontSize: 24.0,
    fontFamily: 'Cera Pro',
    fontWeight: FontWeight.w500,
  );

  static const TextStyle textStyle3 = TextStyle(
    color: Colors.black,
    fontSize: 39.0,
    letterSpacing: 2.3,
    fontFamily: 'Recoleta',
    fontWeight: FontWeight.w500,
  );

  static const TextStyle underlineStyle = TextStyle(
    color: Colors.transparent,
    decoration: TextDecoration.underline,
    decorationColor: Colors.black,
    shadows: [
      Shadow(
        color: Colors.black,
        offset: Offset(0, -1),
      )
    ],
  );
}
