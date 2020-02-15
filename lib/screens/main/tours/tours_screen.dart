import 'dart:convert';
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i_love_sindh/constants/constants.dart';
import 'package:i_love_sindh/models/cities_model.dart';
import 'package:i_love_sindh/models/places_models.dart';
import 'package:i_love_sindh/screens/tour_places/tour_places_screen.dart';

class ToursScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LaunchToursState();
}

class LaunchToursState extends State<ToursScreen> {
  @override
  initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) => initScreen();

  initScreen() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Tours",
          style: TextStyle(
            color: Color(Constants.PRIMARY_COLOR)
          ),
        ),
      ),
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('api/data.json'),
        builder: (context, snapshot) {
          var citiesList = json.decode(snapshot.data.toString());
          return GridView.builder(
            itemCount: citiesList == null ? 0 : citiesList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.0),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => {},
                child: Container(
                  padding: EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              var placesList = citiesList[index]['places'] as List;
                              return TourPlacesScreen(placesList: placesList, city: citiesList[index]['name']);
                            },
                          )
                        )
                      },
                      child: Card(
                        elevation: 5,
                        child: new  Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            new Image.network(
                              citiesList[index]['imageUrl'],
                              fit: BoxFit.cover,
                              height: 110,
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 15, left: 10),
                              child: Text(
                                citiesList[index]['name'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ),
                );
              }
          );
        },
      )
    );
  }
}