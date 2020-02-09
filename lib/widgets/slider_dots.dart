import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_love_sindh/constants/constants.dart';

class SliderDots extends StatelessWidget {
  bool isActive;
  SliderDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
        color: isActive ? Color(Constants.PRIMARY_COLOR): Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)
        )
      ),
    );
  }

}