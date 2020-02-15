import 'package:flutter/material.dart';
import 'package:i_love_sindh/constants/constants.dart';
import 'package:i_love_sindh/models/places_models.dart';
import 'package:i_love_sindh/screens/place_details/place_details_screen.dart';

class TourPlacesScreen extends StatefulWidget {
  final dynamic placesList;
  final dynamic city;

  TourPlacesScreen({this.placesList, this.city});

  @override
  State<StatefulWidget> createState() => _LaunchTourPlacesState(placesList, city);
}

class _LaunchTourPlacesState extends State<TourPlacesScreen> {
  final dynamic placesList;
  final dynamic city;

  _LaunchTourPlacesState(this.placesList, this.city);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          city,
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

      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('api/data.json'),
        builder: (context, snapshot) {
          return GridView.builder(
            itemCount: placesList == null ? 0 : placesList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.05
            ),
            itemBuilder: (context, index) {
              PlacesModel placesModel = new PlacesModel(
                placeName: placesList[index]['name'],
                about: placesList[index]['about'],
                imgUrl: placesList[index]['imgUrl'],
                latitude: placesList[index]['latitude'],
                longitude: placesList[index]['longitude']
              );

              return new Container(
                padding: EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return new PlaceDetailsScreen(placeModel: placesModel);
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
                          placesModel.imgUrl,
                          fit: BoxFit.cover,
                          height: 100,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 15, left: 10),
                          child: Text(
                            placesModel.placeName,
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
              );
            },
          );
        },
      )
    );
  }
}