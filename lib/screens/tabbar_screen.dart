import 'package:flutter/material.dart';
import 'package:flutterapp/screens/uitls/app_colors.dart';

class TabbarScreen extends StatelessWidget {
  const TabbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.secondary_color,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
          ),
          bottom: TabBar(tabs: [
            Text("Chats", style: TextStyle(color: AppColors.primary_color,fontSize: 20,),),
            Text("Status", style: TextStyle(color: AppColors.primary_color,fontSize: 20,),),
            Text("Calls", style: TextStyle(color: AppColors.primary_color,fontSize: 20,),),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.amber,
          ),
            Container(
            color: Colors.red,
          ),
            Container(
            color: Colors.green,
          )

        ]),
      ),
    );
  }
}
