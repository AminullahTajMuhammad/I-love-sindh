import 'package:flutter/material.dart';
import 'package:i_love_sindh/constants/constants.dart';
import 'home/home_screen.dart';
import 'tours/tours_screen.dart';
import 'about/about_screen.dart';

class MainLandingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LaunchState();
}

class LaunchState extends State<MainLandingScreen> {
  int selectedIndex = 0;
  final _screens = [
    HomeScreen(),
    ToursScreen(),
    AboutScreen()
  ];


  build(BuildContext context) => initScreen();

  initScreen() {
    return Scaffold(
      body: _screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffEEEEEE),
        currentIndex: selectedIndex,
        selectedItemColor: Color(Constants.PRIMARY_COLOR),
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.location_city,
              ),
              title: Text("Tours")
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.info,
              ),
              title: Text("About")
          ),
        ],
      ),
    );
  }

}