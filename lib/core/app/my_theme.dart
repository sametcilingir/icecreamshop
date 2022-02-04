import 'package:flutter/material.dart';
import 'my_color.dart';
import 'my_text_theme.dart';

class MyTheme {
  MyTheme._();

  static ThemeData get theme => ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: MyColor.transformColor("fb458a"),
        ),
        textTheme: MyTextTheme.textTheme,
        floatingActionButtonTheme: FloatingActionButtonThemeData().copyWith(
          backgroundColor: MyColor.transformColor("fb458a"),
        ),
      );

  static TextTheme get textStyle => theme.textTheme;
}
