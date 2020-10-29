import 'package:Mordan/screens/authScreen.dart';
import 'package:Mordan/screens/homeScreen.dart';
import 'package:Mordan/screens/mainScreen.dart';
import 'package:Mordan/screens/profileScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF69f0ae),
          accentColor: Color(0xFFb0bec5),
          backgroundColor: Color(0xFF2979ff),
          buttonColor: Color(0xFFff3d00)),
      home: FutureBuilder(
        // Initialize FlutterFire:
        future: _initialization,
        builder: (context, snapshot) {
          // Check for errors
          if (snapshot.hasError) {
            return Text('ERROR');
          }

          // Once complete, show your application
          if (snapshot.connectionState == ConnectionState.done) {
            return StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return MainScreen();
                  }
                  if(snapshot.data == null) {
                    return AuthScreen();
                  }
                  return Center(child: CircularProgressIndicator());
              },
            );
          }

          // Otherwise, show something whilst waiting for initialization to complete
          return CircularProgressIndicator();
        },
      )
    );
  }
}
