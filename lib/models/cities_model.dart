import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:i_love_sindh/models/places_models.dart';

class CitiesModel {
  final String name;
  final String imgUrl;
  final List<PlacesModel> places;

  CitiesModel({this.name, this.imgUrl, this.places});

//  factory CitiesModel.fromJson(Map<String, dynamic> data) {
//    return CitiesModel(
//      name: data['name'],
//      imgUrl: data['imgUrl'],
//      places: parsePlaces(data),
//    );
//  }
//
//  static List<PlacesModel> parsePlaces(placesJson) {
//    var list = placesJson['places'] as List;
//    List<PlacesModel> placesList = list.map((data) => PlacesModel.fromJson(data)).toList();
//    return placesList;
//  }
}