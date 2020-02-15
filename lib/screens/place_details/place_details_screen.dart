import 'package:flutter/material.dart';
import 'package:i_love_sindh/constants/constants.dart';
import 'package:i_love_sindh/models/places_models.dart';
import 'package:url_launcher/url_launcher.dart';

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
                _navigateToGoogleMaps()
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

  _navigateToGoogleMaps() async {
    bool isIOS = Theme.of(context).platform == TargetPlatform.iOS;
    String googleUrl = '';
    if (isIOS) {
      googleUrl =
      'comgooglemapsurl://maps.google.com/maps?f=d&daddr=${model.latitude},${model.longitude}&sspn=0.2,0.1';
      String appleMapsUrl =
          'https://maps.apple.com/?sll=${model.latitude},${model.longitude}';
      if (await canLaunch("comgooglemaps://")) {
        print('launching com googleUrl');
        await launch(googleUrl);
      } else if (await canLaunch(appleMapsUrl)) {
        print('launching apple url');
        await launch(appleMapsUrl);
      } else {
        await launch(
            'https://www.google.com/maps/search/?api=1&query=${model.latitude},${model.longitude}');
      }
    } else {
      await launch('https://www.google.com/maps/search/?api=1&query=${model.latitude},${model.longitude}');
    }
  }
}