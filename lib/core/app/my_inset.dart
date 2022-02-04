import 'package:flutter/material.dart';

class MyInset {
  MyInset._();

  static EdgeInsets all(double value) {
    return EdgeInsets.all(value);
  }

   static EdgeInsets only({double? left, double? top, double? right, double? bottom}) {
    return EdgeInsets.only(
      left: left??0,
      top: top??0,
      right: right??0,
      bottom: bottom??0,
    );
  }

  static EdgeInsets get zero => EdgeInsets.zero;

}
