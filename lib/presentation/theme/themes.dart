import 'package:flutter/material.dart';

abstract class Themes {
  static final light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
  );
}
