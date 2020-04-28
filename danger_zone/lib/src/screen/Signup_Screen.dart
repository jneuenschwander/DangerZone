import 'package:danger_zone/src/screen/myChart.dart';
import 'package:danger_zone/src/service/authentication.dart';
import 'package:danger_zone/src/widgets/app_button.dart';
import 'package:danger_zone/src/widgets/app_helpButton.dart';
import 'package:danger_zone/src/widgets/app_icon.dart';
import 'package:danger_zone/src/widgets/app_textfield_icon.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  
  static const String routeName = '/signup';
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _fullname;
  String _number;
  String _email;
  String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SafeArea(child:HelpButton(),),
              AppIcon(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: AppButton(
                      name: "LOG IN",
                      color: Colors.blueAccent,
                      colorText: Colors.white,
                      bordesOn: false,
                      onPressed: (){
                        Navigator.pushNamed(context, '');},
                      ) 
                    ),
                  Expanded(child:AppButton(name: "SIGN UP",colorText: Colors.black ,bordesOn: false, onPressed: null, )),
              ],
              ),
              SizedBox(height: 23.0,),
              AppTextfieldIcon(hintText: "Full name",icono: Icons.person_add ,
              onChanged:(value){
                  _fullname = value;
                } ,),
              AppTextfieldIcon(hintText: "Number",icono: Icons.phone ,
              onChanged:(value){
                  _number = value;
                } ,),
              AppTextfieldIcon(hintText: "Mail",icono: Icons.mail ,
              onChanged:(value){
                  _email = value;
                } 
              ,),
              AppTextfieldIcon(hintText: "Password",icono: Icons.lock_open ,
              onChanged:(value){
                  _password = value;
                } ,),
              
              SizedBox(height: 43.0,),
              AppButton(      
                color: Colors.blueAccent,
                colorText: Colors.white,
                name: "Log in",
                bordesOn: true,
                onPressed: (){
                  var user = Authentication().createUser(fullname: _fullname, number: _number,email: _email, password: _password);

                  Navigator.pushNamed(context,'/chart');
                },
                )
            ],
          ),
        )
      ),
    );
  }
}