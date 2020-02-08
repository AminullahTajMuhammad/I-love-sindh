import 'dart:async';

import 'package:flutter/material.dart';
import 'package:i_love_sindh/models/slide_model.dart';
import 'slider_views.dart';
import 'package:i_love_sindh/widgets/slider_dots.dart';
import 'package:i_love_sindh/screens/main/main_landing_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LaunchState();
}

class LaunchState extends State<OnBoardingScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    Timer.periodic(Duration(seconds: 5), (Timer _timer) {
//      _currentPage > 2 ? _currentPage++ : _currentPage = 0;
//    });
  }

//  @override
//  void dispose() {
//    // TODO: implement dispose
//    super.dispose();
//    _pageController.dispose();
//  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            onPageChanged: _onPageChanged,
            itemCount: slideItemList.length,
            itemBuilder: (ctx, i) => SliderViews(i),
          ),

          Stack(
            alignment: AlignmentDirectional.topStart,
            children: <Widget>[
              Container(
                alignment: AlignmentDirectional.bottomCenter,
                margin: EdgeInsets.only(bottom: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    for(int i=0; i<slideItemList.length; i++)
                      i == _currentPage ? SliderDots(true) : SliderDots(false)
                  ],
                ),
              ),
              _currentPage >= 2 ? showDoneButton(true) : showDoneButton(false)
            ],
          )
        ],
      ),
    );
  }

  showDoneButton(bool isVisible) {
    return Visibility(
      child: Container(
        alignment: AlignmentDirectional.bottomEnd,
        margin: EdgeInsets.only(bottom: 15.0, right: 12.0),
        child: FloatingActionButton(
          mini: true,
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => MainLandingScreen(),
            ));
          },
          backgroundColor: Color(0xffE89B46),
          child: Icon(
            Icons.done,
            color: Colors.white,
          ),
        ),
      ),
      visible: isVisible,
    );
  }
}