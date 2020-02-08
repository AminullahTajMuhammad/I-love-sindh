import 'package:flutter/material.dart';

class MainLandingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LaunchState();
}

class LaunchState extends State<MainLandingScreen> {
  build(BuildContext context) => initScreen();

  initScreen() {
    return Scaffold(
      body: Text("Hello World"),
    );
  }
}