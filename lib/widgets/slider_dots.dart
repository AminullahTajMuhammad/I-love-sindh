import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderDots extends StatelessWidget {
  bool isActive;
  SliderDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 3.3),
      height: isActive ? 10 : 6,
      width: isActive ? 10 : 6,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xffE89B46),
        border: isActive ? Border.all(color: Color(0xff927DFF), width: 2.0) : Border.all(color: Colors.transparent, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
    );
  }

}