import 'package:Mordan/screens/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> pages = [
    Home(),
  ];
  var cIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF69f0ae),
          accentColor: Color(0xFFb0bec5),
          backgroundColor: Color(0xFF2979ff),
          buttonColor: Color(0xFFff3d00)),
      home: pages[cIndex],
    );
  }
}
