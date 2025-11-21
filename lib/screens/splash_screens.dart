import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterapp/screens/sign_screens.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({super.key});

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignScreens()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Colors.purple, Colors.blueGrey],
          ),
        ),
        child: Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: Image.asset("assets/logo.png", color: Colors.white),
          ),
        ),
      ),
    );
  }
}
