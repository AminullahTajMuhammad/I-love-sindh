import 'package:flutter/material.dart';

class ToursScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LaunchToursState();
}

class LaunchToursState extends State<ToursScreen> {
  @override
  Widget build(BuildContext context) => initScreen();

  initScreen() {
    return Scaffold(
      body: Text("Tours Screen"),
    );
  }
}