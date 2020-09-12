import 'package:flutter/material.dart';

class HomePageBackground extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          height: height*0.35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)
            ),
            gradient: LinearGradient(
              colors: [
                Colors.pink[400],
                Colors.orange[900],
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            )
          ),
        ),
        Container()
      ],
    );
  }
}