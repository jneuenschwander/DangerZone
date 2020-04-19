import 'package:danger_zone/src/widgets/app_button.dart';
import 'package:danger_zone/src/widgets/app_helpButton.dart';
import 'package:danger_zone/src/widgets/app_icon.dart';
import 'package:danger_zone/src/widgets/app_textfield_icon.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const String routeName = '';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                      )
                   ),
                  Expanded(child:AppButton(name: "SIGN UP",colorText: Colors.black ,bordesOn: false,onPressed: (){
                        Navigator.pushNamed(context, '/signup');
                      },)),
              ],
              ),
              SizedBox(height: 15.0,),

              AppTextfieldIcon(hintText: "Mail",icono: Icons.mail ,),
              AppTextfieldIcon(hintText: "Password",icono: Icons.lock_open ,),
              
              SizedBox(height: 43.0,),
              AppButton(
                color: Colors.blueAccent,
                colorText: Colors.white,
                name: "Log in",
                bordesOn: true,
                onPressed: (){Navigator.pushNamed(context,'/chart');},
                )

            ],
          ),
        )
      ),
    );
  }
}