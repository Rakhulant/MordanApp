import 'package:Mordan/screens/profileScreen.dart';
import 'package:flutter/material.dart';

import 'homeScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pages = [
    Home(),
    Profile()
  ];
  var cIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face_outlined),
            label: 'Profile',
          )
        ],
        currentIndex: cIndex,
        onTap: (val) {
          setState(() {
            cIndex = val;
          });
        },
      ),
      body: pages[cIndex],
    );
  }
}
