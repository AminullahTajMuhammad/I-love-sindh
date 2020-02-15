import 'package:flutter/material.dart';
import 'package:i_love_sindh/constants/constants.dart';
import 'package:i_love_sindh/models/places_models.dart';

class PlaceDetailsScreen extends StatefulWidget {
  final PlacesModel placeModel;
  PlaceDetailsScreen({this.placeModel});

  @override
  State<StatefulWidget> createState() => _LaunchPlaceDetailsState(this.placeModel);
}

class _LaunchPlaceDetailsState extends State<PlaceDetailsScreen> {
  final PlacesModel model;
  _LaunchPlaceDetailsState(this.model);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => {
            Navigator.pop(context)
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(Constants.PRIMARY_COLOR),
          ),
        ),
        title: Text(
          model.placeName,
          style: TextStyle(
            color: Color(Constants.PRIMARY_COLOR),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  model.imgUrl,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, top: 15),
                  child: Text(
                    "About",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),
                  )
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 100),
                  child: Text(
                    model.about,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  )
                ),
              ],
            ),
          ),
          Container(
            alignment: FractionalOffset.bottomCenter,
            margin: EdgeInsets.all(10),
            child: MaterialButton(
              onPressed: () => {

              },
              minWidth: MediaQuery.of(context).size.width,
              color: Color(Constants.PRIMARY_COLOR),
              child: Text(
                "Direction",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}