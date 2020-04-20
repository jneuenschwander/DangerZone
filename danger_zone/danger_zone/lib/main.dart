import 'package:danger_zone/src/screen/Signup_Screen.dart';
import 'package:danger_zone/src/screen/home.dart';
import 'package:danger_zone/src/screen/myChart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
   home: Home(),
   debugShowCheckedModeBanner: false,
   initialRoute: Home.routeName,
   routes:<String, WidgetBuilder>{
     Home.routeName: (BuildContext context)=>Home(),
     SignUp.routeName: (BuildContext context)=>SignUp(),
     MyChart.routeName: (BuildContext context)=>MyChart.withSampleData()
     
   }

  ));
}



