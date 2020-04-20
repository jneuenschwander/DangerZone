import 'package:flutter/material.dart';

class HelpButton extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return new Container(
    child: Align(
      alignment: Alignment.topRight,
      child: IconButton(
        iconSize: 70.0,
        icon: Icon(
          Icons.help,
          color: Colors.black,
          
          ), onPressed: (){print("Hello");}
        ),
    ),
  
 );
 }
}