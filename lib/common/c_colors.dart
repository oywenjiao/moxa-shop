import 'dart:ui';
import 'package:flutter/material.dart';

class CColors {

  static  MaterialColor green = CColors.materialColor(Color(0xff44b979));
  static  MaterialColor yellow = CColors.materialColor(Color(0xffff961f));
  static  MaterialColor red = CColors.materialColor(Color(0xffff3837));
  static  MaterialColor grey = CColors.materialColor(Color(0xffaeaeae));
  static  MaterialColor black = CColors.materialColor(Color(0xff1e1e1e));


  static MaterialColor materialColor(Color color) {
    List strengths = <double>[.05];
    var swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }
}