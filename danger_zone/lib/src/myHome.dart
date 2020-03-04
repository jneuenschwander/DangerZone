import 'package:danger_zone/src/myChart.dart';
import 'package:flutter/material.dart';


class MyHome extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyChart.withSampleData(),
    );
  }
}