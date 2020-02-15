import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:i_love_sindh/models/slide_model.dart';

class SliderViews extends StatelessWidget {
  final int index;
  SliderViews(this.index);
  Widget build(BuildContext context) => initScreen();
  initScreen() {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.asset(
              slideItemList[index].imgUrl,
              fit: BoxFit.fitWidth,
              height: 200,
              width: 500,
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 50.0),
            child: Text(
              slideItemList[index].title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 12.0, left: 5, right: 5),
            child: Text(
              slideItemList[index].desc,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}