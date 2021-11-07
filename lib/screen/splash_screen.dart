import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sm_food/screen/home_screen.dart';

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreen createState() => _MySplashScreen();
}

class _MySplashScreen extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Image.asset(
            "assests/image/logo/logo.png",
          ),
        ),
      ),
    );
  }
}
