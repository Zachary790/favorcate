import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HYAppTheme {

  static const double bodyFontSize = 14;
  static const double smallFontSize = 16;
  static const double normalFontSize = 20;
  static const double largeFontSize = 24;
  static final Color norTextColors = Colors.red;

  static final ThemeData norTheme = ThemeData(
    primarySwatch: Colors.pink,
    canvasColor: Color.fromRGBO(255, 254, 222, 1),
    textTheme: TextTheme(
      body1: TextStyle(fontSize: bodyFontSize, color: Colors.black87),
      display1: TextStyle(fontSize: smallFontSize, color: Colors.black87),
      display2: TextStyle(fontSize: normalFontSize, color: Colors.black87),
      display3: TextStyle(fontSize: largeFontSize, color: Colors.black87),
    )
  );

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    textTheme: TextTheme(
      body1: TextStyle(fontSize: normalFontSize,color: Colors.green)
    )
  );
}