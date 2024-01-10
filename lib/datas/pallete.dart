//palette.dart
import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor kToLight = MaterialColor(
    0xff40c4ff, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff40c4ff), //10%
      100: Color(0xff40c4ff), //20%
      200: Color(0xff40c4ff), //30%
      300: Color(0xff40c4ff), //40%
      400: Color(0xff40c4ff), //50%
      500: Color(0xff40c4ff), //60%
      600: Color(0xff40c4ff), //70%
      700: Color(0xff40c4ff), //80%
      800: Color(0xff40c4ff), //90%
      900: Color(0xff40c4ff), //100%
      // 50: Color(0xff4cc4f9), //10%
      // 100: Color(0xff60caf9), //20%
      // 200: Color(0xff74d1fa), //30%
      // 300: Color(0xff88d7fb), //40%
      // 400: Color(0xff9cdefc), //50%
      // 500: Color(0xffafe5fc), //60%
      // 600: Color(0xffc3ebfd), //70%
      // 700: Color(0xffd7f2fe), //80%
      // 800: Color(0xffebf8fe), //90%
      // 900: Color(0xffffffff), //100%
    },
  );
} // you
