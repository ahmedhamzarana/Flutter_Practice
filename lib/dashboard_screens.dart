import 'package:flutter/material.dart';
import 'package:flutterapp/screens/Dashboard_Screens/cart_screen.dart';
import 'package:flutterapp/screens/Dashboard_Screens/home_screen.dart';
import 'package:flutterapp/screens/Dashboard_Screens/news_screen.dart';
import 'package:flutterapp/screens/Dashboard_Screens/profile_screen.dart';
import 'package:flutterapp/screens/uitls/app_colors.dart';

class DashboardScreens extends StatefulWidget {
  const DashboardScreens({super.key});

  @override
  State<DashboardScreens> createState() => _DashboardScreensState();
}

class _DashboardScreensState extends State<DashboardScreens> {
  int _current = 0;
  final List<Widget> _dashboardscreens = [
    HomeScreen(),
    NewsScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: _dashboardscreens[_current],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.secondarycolor,
        selectedItemColor: AppColors.primarycolor,
        unselectedItemColor: AppColors.infocolor,
        type: BottomNavigationBarType.fixed,
        currentIndex: _current,
        onTap: (index) {
          setState(() {
            _current = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Cart",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
