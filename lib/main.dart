import 'package:flutter/material.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/on_boarding/slider_views.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SplashScreen(),
    );
  }

}