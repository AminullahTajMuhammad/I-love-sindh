import 'package:flutter/material.dart';
import 'package:i_love_sindh/constants/constants.dart';
import 'package:i_love_sindh/screens/open_source_licenses/open_source_licenses_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _launchScreen(context);

  _launchScreen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "About",
          style: TextStyle(
            color: Color(Constants.PRIMARY_COLOR),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 15, left: 15),
            child: Text(
              "About App",
              style: TextStyle(
                color: Color(Constants.PRIMARY_COLOR),
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          // About App Container
          Container(
            margin: EdgeInsets.all(10),
            child: SizedBox(
              height: 190,
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    //Version Container
                    Container(
                      padding: EdgeInsets.all(17),
                      child: GestureDetector(
                        onTap: () { },
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.watch_later,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                "Version",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width - 210, top: 5),
                              child: Text(
                                "1.0.0",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ), // Container

                    // Rate App Container
                    Container(
                      padding: EdgeInsets.only(left: 17, right: 17),
                      child: GestureDetector(
                        onTap: () {
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.star,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                "Rate App",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ), // Container

                    // OpenSource Licenses Container
                    Container(
                      padding: EdgeInsets.only(left: 17, right: 17, top: 17),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => OpenSourceLicensesScreen()
                          ));
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.public,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                "OpenSource Licenses",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ), // Container
                    Container(
                      padding: EdgeInsets.only(left: 17, right: 17, top: 17),
                      child: GestureDetector(
                        onTap: () {
                          launch("https://stdc.gos.pk/");
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.info,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                "Visit STDC",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ), // Container
                  ],
                ),
              ),
            )
          ),

          Container(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text(
              "Author",
              style: TextStyle(
                  color: Color(Constants.PRIMARY_COLOR),
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

          // Author Container
          Container(
            margin: EdgeInsets.all(10),
            child: SizedBox(
              height: 160,
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    //Author
                    Container(
                      padding: EdgeInsets.all(17),
                      child: GestureDetector(
                        onTap: () { 
                          launch("https://aminullah.me/");
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.person,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                "Aminullah Taj Muhammad",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ), // Container

                    // Support Container
                    Container(
                      padding: EdgeInsets.only(left: 17, right: 17),
                      child: GestureDetector(
                        onTap: () {
                          launch("https://github.com/AminullahTajMuhammad/I-love-sindh");
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.favorite,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Support",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    "Give an star to show the support",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ), // Container

                    // Fork On Github Container
                    Container(
                      padding: EdgeInsets.only(left: 17, right: 17, top: 17),
                      child: GestureDetector(
                        onTap: () {
                          launch("https://github.com/AminullahTajMuhammad/I-love-sindh");
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.call_split,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                "Fork on Github",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ), // Container
                  ],
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}
