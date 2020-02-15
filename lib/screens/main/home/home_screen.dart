import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:i_love_sindh/constants/constants.dart';
import 'package:i_love_sindh/widgets/slider_dots.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LaunchHomeState();
}

class LaunchHomeState extends State<HomeScreen> {
  final _images = [
    "images/faiz_mahal.jpg",
    "images/mandir.jpg",
    "images/moen_jo_daro.jpg",
    "images/mohatta_karachi.jpg",
    "images/ranikot_fort.jpg",
    "images/sindh.jpg",
    "images/sukkur_bridge.jpg",
  ];
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            color: Color(Constants.PRIMARY_COLOR),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 10),),
            CarouselSlider(
              height: 250,
              items: <Widget>[
                for(int i = 0 ; i < _images.length; i++)
                  Container(
                      padding: EdgeInsets.all(5),
                      child: Image.asset(
                        _images[i],
                        fit: BoxFit.cover,
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                      )
                  )
              ],
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              autoPlay: true,
              autoPlayAnimationDuration: Duration(seconds: 2),
            ),
            Padding(padding: EdgeInsets.only(top: 10),),
            Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (int i = 0; i < _images.length; i++)
                        i == _current
                            ? SliderDots(true)
                            : SliderDots(false),
                    ],
                  ),
                ),
              ],
            ), // Column

            Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Welcome to Sindh",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25
                      ),
                    ),
                    Text(
                      "(Historical places in pakistan)",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontStyle: FontStyle.italic
                      ),
                    ),
                  ],
                )
            ), // Center

            Container(
              padding: EdgeInsets.only(left: 10, top: 25),
              child: Text(
                "History of Sindh:",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 10, top: 5, right: 10),
              child: Text(
                Constants.HISTORY_OF_SINDH,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.justify,
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                Constants.HISTORY_OF_SINDH2,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }
}