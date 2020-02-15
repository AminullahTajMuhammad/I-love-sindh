import 'dart:async';

import 'package:flutter/material.dart';
import 'package:i_love_sindh/screens/main/bottom_navigation_screen.dart';
import 'package:i_love_sindh/screens/main/home/home_screen.dart';
import '../on_boarding/on_boarding_screen.dart';
import '../on_boarding/slider_views.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LaunchState();
}

class LaunchState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context)
//      FutureBuilder(
//        future: Preference.getValue('on_boarding_saved'),
//        builder: (context, snapshot) {
//          if(snapshot.data) {
//            return MainLandingScreen();
//          } else {
//            return OnBoardingScreen();
//          }
//        },
//      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return Timer(
      duration,
      route
    );
  }

  route() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => OnBoardingScreen()
        )
    );
  }

  initScreen(BuildContext context) {
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.asset(
              "images/logo.png",
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}