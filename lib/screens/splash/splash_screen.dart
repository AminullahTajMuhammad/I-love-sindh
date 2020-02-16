import 'dart:async';

import 'package:flutter/material.dart';
import '../on_boarding/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LaunchState();
}

class LaunchState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
      )
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 2);
    return Timer(
      duration,
      route
    );
  }

  route() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => OnBoardingScreen())
    );
  }
}