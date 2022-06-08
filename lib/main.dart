import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        // home: const CardScreen(),
        initialRoute: AppRoutes.initialRoute,
        routes: {
          'home'     : (BuildContext context) => const HomeScreen(),
          'listview1': (BuildContext context) => const listview1Screen(),
          'listview2': (BuildContext context) => const listview2Screen(),
          'alert'    : (BuildContext context) => const AlertScreen(),
          'card'     : (BuildContext context) => const CardScreen(),
        });
  }
}
