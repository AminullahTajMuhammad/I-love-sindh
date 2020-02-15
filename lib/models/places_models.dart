class PlacesModel {
  String placeName;
  String imgUrl;
  String about;
  dynamic latitude;
  dynamic longitude;

  PlacesModel({this.placeName, this.about, this.imgUrl, this.latitude, this.longitude});

  factory PlacesModel.fromJson(Map<String, dynamic> placesData) {
    return PlacesModel(
      placeName: placesData['name'],
      about: placesData['about'],
      imgUrl: placesData['imgUrl'],
      latitude: placesData['latitude'],
      longitude: placesData['longitude']
    );
  }
}