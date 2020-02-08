import 'package:flutter/cupertino.dart';
import 'package:i_love_sindh/constants/constants.dart';

class SliderModel {
  final String imgUrl;
  final String title;
  final String desc;

  SliderModel({
    this.imgUrl,
    this.title,
    this.desc
  });

}

final slideItemList = [
  SliderModel(
      imgUrl: "images/faiz_mahal.jpg",
      title: Constants.TITLE1,
      desc: Constants.DESC1
  ),
  SliderModel(
      imgUrl: "images/moen_jo_daro.jpg",
      title: Constants.TITLE2,
      desc: Constants.DESC2
  ),
  SliderModel(
      imgUrl: "images/ranikot_fort.jpg",
      title: Constants.TITLE3,
      desc: Constants.DESC3
  )
];