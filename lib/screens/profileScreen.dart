import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 50,
          child: Image.asset('assets/face.jpg',
          fit: BoxFit.scaleDown,),
        ),
      ),
    );
  }
}
