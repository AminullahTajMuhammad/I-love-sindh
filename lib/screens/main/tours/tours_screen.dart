import 'package:flutter/material.dart';
import 'package:i_love_sindh/constants/constants.dart';
import 'package:i_love_sindh/models/cities_model.dart';
import 'package:i_love_sindh/screens/tour_places/tour_places_screen.dart';

class ToursScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LaunchToursState();
}

class LaunchToursState extends State<ToursScreen> {
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
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        children: <Widget>[
          for(int i = 0; i < items.length; i++)
            _addData(items[i])
        ],
      )
    );
  }

  _addData(CitiesModel item) {
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () => {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TourPlacesScreen(),
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
                    item.name,
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