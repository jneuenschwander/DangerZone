import 'package:flutter/material.dart';

class AppTextfieldIcon extends StatefulWidget {
  final IconData icono;
  final String hintText;
  final ValueChanged<String> onChanged;

  const AppTextfieldIcon({Key key, this.icono, this.hintText,this.onChanged}) : super(key: key);
  @override
  _AppTextfieldIconState createState() => new _AppTextfieldIconState();
 }
class _AppTextfieldIconState extends State<AppTextfieldIcon> {
  @override
  Widget build(BuildContext context) {
   return new Container(
     width: 390,
     child: TextField(
      
      decoration: InputDecoration(hintText: widget.hintText,
      prefixIcon: Icon(widget.icono),
      fillColor: Colors.blueAccent ),
      onChanged: widget.onChanged,
    )
   );
  }
}