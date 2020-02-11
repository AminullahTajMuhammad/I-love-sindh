import 'package:flutter/material.dart';
import 'package:i_love_sindh/constants/constants.dart';
import 'package:i_love_sindh/models/slide_model.dart';
import 'slider_views.dart';
import 'package:i_love_sindh/widgets/slider_dots.dart';
import 'package:i_love_sindh/screens/main/bottom_navigation_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LaunchState();
}

class LaunchState extends State<OnBoardingScreen> {
  int _currentPage;
  PageController _pageController;

  @override
  void initState() {
    _currentPage = 0;
    super.initState();
  }

  _onPageChanged(int value) {
    setState(() => _currentPage = value);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          PageView.builder(
            physics: ClampingScrollPhysics(),
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
                margin: EdgeInsets.only(bottom: 35),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    for (int i = 0; i < slideItemList.length; i++)
                      i == _currentPage
                          ? SliderDots(true)
                          : SliderDots(false),
                  ],
                ),
              ),
            ],
          ),
          _currentPage == slideItemList.length-1
                  ? showDoneButton(true)
                  : showDoneButton(false)
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
          backgroundColor: Color(Constants.PRIMARY_COLOR),
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