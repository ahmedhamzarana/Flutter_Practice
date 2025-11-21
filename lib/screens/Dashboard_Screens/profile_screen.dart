import 'package:flutter/material.dart';
import 'package:flutterapp/screens/tabbar_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TabbarScreen()),
            );
          },
          child: Text(
            "Profile Screen",
            style: TextStyle(fontSize: 22, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
