import 'package:flutter/material.dart';
import '../../home/view/detail/detail_screen.dart';

import '../../home/view/home/home_screen.dart';

class MyRoutes {
  MyRoutes._();
  static const String home = '/home';
  static const String detail = '/detail';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) =>  HomeScreen(),
    detail: (BuildContext context) =>  DetailScreen(),
  };

}