import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'core/app/my_route.dart';
import 'core/app/my_theme.dart';
import 'firebase_options.dart';
import 'locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.theme,
      title: 'Ice Cream Shop',
      initialRoute: MyRoutes.home,
      routes: MyRoutes.routes,
    );
  }
}
