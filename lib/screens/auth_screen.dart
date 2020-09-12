import 'package:flutter/material.dart';
import './home_screen.dart';
import '../components/my_background.dart';

class AuthScreen extends StatelessWidget {
  static const String tag = "auth-screen";

  final _enabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: Colors.white
    )
  );

  final _formInputTextStyle = TextStyle(
    color: Colors.white
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          MyBackground(),
          Container(
            child: SafeArea(
              child: Column(
                children:[
                  ListTile(
                    leading: Hero(tag: "app-logo", child: FlutterLogo(size: 35,)),
                    title: Text(
                      "Authenticate",
                      style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white
                      ),
                    ),
                  ),
                  Divider(color: Colors.black26,height: 1,),
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:[
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: "Enter E-zwich number",
                              labelStyle: _formInputTextStyle,
                              enabledBorder: _enabledBorder,
                              border: _enabledBorder
                            ),
                            style: _formInputTextStyle,
                          ),
                          SizedBox(height: 15,),
                          RaisedButton.icon(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                            ),
                            icon: Icon(Icons.fingerprint),
                            label: Text("Authenticate and proceed"),
                            onPressed: (){
                              Navigator.of(context).pushNamed(HomePage.tag);
                            },
                          )
                        ]
                      ),
                    ),
                  )
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}