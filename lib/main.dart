import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF304ffe), accentColor: Color(0xFFff3d00)),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'AppName',
            style: TextStyle(),
          ),
        ),
        body: Center(
          child: MaterialButton(
            onPressed: () {},
            child: Text('SignIn'),
          ),
        ),
      ),
    );
  }
}
