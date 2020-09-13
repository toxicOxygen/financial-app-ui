import 'package:flutter/material.dart';
import 'package:mobile_pos/provider/auth_provider.dart';
import 'package:provider/provider.dart';
import './home_screen.dart';
import '../components/my_background.dart';

class AuthScreen extends StatelessWidget {
  static const String tag = "auth-screen";

  final _enabledBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.white));

  final _formInputTextStyle = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          MyBackground(),
          Container(
            child: SafeArea(
              child: Column(children: [
                ListTile(
                  leading: Hero(
                      tag: "app-logo",
                      child: FlutterLogo(
                        size: 35,
                      )),
                  title: Text(
                    "Authenticate",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white),
                  ),
                ),
                Divider(
                  color: Colors.black26,
                  height: 1,
                ),
                CustomInPageForm(
                  formInputTextStyle: _formInputTextStyle,
                  enabledBorder: _enabledBorder,
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}

class CustomInPageForm extends StatelessWidget {
  const CustomInPageForm({
    Key key,
    @required TextStyle formInputTextStyle,
    @required OutlineInputBorder enabledBorder,
  })  : _formInputTextStyle = formInputTextStyle,
        _enabledBorder = enabledBorder,
        super(key: key);

  final TextStyle _formInputTextStyle;
  final OutlineInputBorder _enabledBorder;

  @override
  Widget build(BuildContext context) {
    final localAuth = Provider.of<AuthProvider>(context, listen: true);

    return Form(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: "Enter E-zwich number",
                labelStyle: _formInputTextStyle,
                enabledBorder: _enabledBorder,
                border: _enabledBorder),
            style: _formInputTextStyle,
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton.icon(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            icon: Icon(
                localAuth.isAuthenticating ? Icons.cancel : Icons.fingerprint),
            label: Text(localAuth.isAuthenticating
                ? "Canecel"
                : "Authenticate and proceed"),
            onPressed: () async {
              localAuth.authenticate().then((value) {
                Navigator.pop(context);
                Navigator.of(context).pushReplacementNamed(HomePage.tag);
              }).catchError((e) {
                print(e);
                Scaffold.of(context).hideCurrentSnackBar();
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text(e.toString())));
              });
            },
          )
        ]),
      ),
    );
  }
}
