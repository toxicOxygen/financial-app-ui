import 'package:flutter/material.dart';


class AccountBalanceWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.3,
      width: width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Card(
        elevation: 10.0,
        color: Color.fromRGBO(9, 20, 60, 1.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              ListTile(
                title: Text(
                  "Account Balance",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                    color:Colors.white
                  ),
                ),
                trailing: Text(
                  "\$ 230.49",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color:Colors.white
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "xxx xxx xxx-1",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Samuel Agomina",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                    color: Colors.white,
                  ),
                ),
                trailing: FlatButton.icon(
                  onPressed: ()=>{}, 
                  icon: Icon(Icons.details), 
                  label: Text("Details"),
                  textColor: Colors.white,
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}