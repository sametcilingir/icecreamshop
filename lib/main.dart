import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:icecreamshop/home/view_model/view_model.dart';
import 'firebase_options.dart';
import 'home/view/detail_screen.dart';
import 'home/view/home_screen.dart';
import 'locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(int.parse('0xFFfb458a')),
        ),
      ),
      title: 'Ice Cream Shop',
      initialRoute: "/home",
      routes: {
        '/home': (context) => HomeScreen(),
        '/detail': (context) => DetailScreen(),
      },
    );
  }
}
