import 'package:flutter/material.dart';
import './auth_screen.dart';
import '../components/my_background.dart';


class WelcomePage extends StatelessWidget {
  static const String tag = "welcome-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children:[
          MyBackground(),

          //this is the body of app
          Container(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Mobile Pos",
                    style: Theme.of(context).textTheme.headline3.copyWith(
                      color: Colors.white
                    ),
                  ),
                  Hero(
                    tag: "app-logo",
                    child: FlutterLogo(size: 120,),
                  ),
                  RaisedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Sign In"),
                      ],
                    ),
                    onPressed: (){
                      Navigator.of(context).pushNamed(AuthScreen.tag);
                    },
                  ),
                  FlatButton(
                    child: Text('About Us'),
                    onPressed: (){},
                    textColor: Colors.white,
                  ),
                  Text('Powered by Kingstugi Devs')
                ],
              ),
            ),
          )
        ]
      ),
    );
  }
}