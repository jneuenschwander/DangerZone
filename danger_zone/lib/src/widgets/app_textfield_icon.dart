import 'package:flutter/material.dart';

class AppTextfieldIcon extends StatefulWidget {
  final IconData icono;
  final String hintText;


  const AppTextfieldIcon({Key key, this.icono, this.hintText}) : super(key: key);
  @override
  _AppTextfieldIconState createState() => new _AppTextfieldIconState();
 }
class _AppTextfieldIconState extends State<AppTextfieldIcon> {
  @override
  Widget build(BuildContext context) {
   return new Container(
     width: 390,
     child: TextField(
      obscureText: true,
      decoration: InputDecoration(hintText: widget.hintText,
      prefixIcon: Icon(widget.icono),
      fillColor: Colors.blueAccent ),
    )
   );
  }
}