import 'package:flutter/material.dart';
import 'package:i_love_sindh/constants/constants.dart';
import 'package:i_love_sindh/models/places_models.dart';
import 'package:i_love_sindh/screens/place_details/place_details_screen.dart';

class TourPlacesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LaunchTourPlacesState();
}

class _LaunchTourPlacesState extends State<TourPlacesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Karachi",
          style: TextStyle(
              color: Color(Constants.PRIMARY_COLOR)
          ),
        ),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => {
            Navigator.of(context).pop()
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(Constants.PRIMARY_COLOR),
          ),
        ),
      ),

      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        children: <Widget>[
          for(int i = 0; i < placesItems.length; i++)
            _addData(placesItems[i])
        ],
      )
    );
  }

  _addData(PlacesModel item) {
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () => {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlaceDetailsScreen(),
              )
          )
        },
        child: Card(
          elevation: 5,
          child: SizedBox(
            child: Wrap(
              children: <Widget>[
                Image.asset(
                  item.imgUrl,
                  height: 100,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.only(top: 15, left: 10),
                  child: Text(
                    item.placeName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                )
              ],
            )
          ),
        ),
      )
    );
  }

}