import 'package:flutter/material.dart';
import 'package:i_love_sindh/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenSourceLicensesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LaunchState();
}

class _LaunchState extends State<OpenSourceLicensesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => {
            Navigator.of(context).pop()
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(Constants.PRIMARY_COLOR),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          _openSourceData(
              "cupertino_icons",
              "This is an asset repo containing the default set of icon assets used by Flutter's Cupertino widgets.",
              "https://pub.dev/packages/cupertino_icons"
          ),
          _openSourceData(
              "carousel_slider",
              "A carousel slider widget, support infinite scroll and custom child widget, with auto play feature.",
              "https://pub.dev/packages/carousel_slider"
          ),
          _openSourceData(
              "url_launcher",
              "A Flutter plugin for launching a URL in the mobile platform. Supports iOS and Android.",
              "https://pub.dev/packages/url_launcher"
          )
        ],
      ),
    );
  }

  _openSourceData(String title, String desc, String url) {
    return new ListTile(
      onTap: () => {
        launch(
          url,
        )
      },
      title: Container(
        margin: EdgeInsets.all(5),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      subtitle: Container(
        margin: EdgeInsets.only(left: 5, bottom: 5),
        child: Text(
          desc,
          style: TextStyle(
            fontSize: 15
          ),
        ),
      ),
    );
  }
}