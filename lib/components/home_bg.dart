import 'package:flutter/material.dart';

class HomePageBackground extends StatelessWidget {
  final bool invert;
  HomePageBackground({this.invert = false});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    if(invert)
    {
      return Column(
        children: [
          Flexible(
            child: Container(),
            flex: 35,
          ),
          Flexible(
            flex: 65,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
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
            )
          )
        ],
      );
    }

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