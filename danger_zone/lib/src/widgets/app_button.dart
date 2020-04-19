import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final MaterialAccentColor color;
  final Color colorText;
  final String name;
  final VoidCallback onPressed;
  final bool bordesOn;

  const AppButton({Key key, this.color, this.name, this.onPressed ,this.colorText,this.bordesOn}) : super(key: key);
  
 @override
 Widget build(BuildContext context) {
  return Material(
        color: color,
        elevation: 5.0,
        borderRadius: (bordesOn)? BorderRadius.circular(30.0): BorderRadius.circular(0.0),
        child: SizedBox(
          height: 43.0,
          child:  FlatButton(
            child: Text(name,style: TextStyle(color:  colorText)),
            onPressed: onPressed,), 
          )
       
        );
 }
}