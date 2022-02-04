import 'package:flutter/material.dart';

class MyColor {
  MyColor._();

 static Color? transformColor(String color) {
  return  Color(int.parse("0xff$color"));
  }
}
