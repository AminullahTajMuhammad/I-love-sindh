import 'package:flutter/material.dart';
import 'package:i_love_sindh/constants/constants.dart';
import 'screens/splash/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(Constants.PRIMARY_COLOR)
      ),
      home: SplashScreen(),
    );
  }

}