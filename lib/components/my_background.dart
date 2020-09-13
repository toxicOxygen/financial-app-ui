import 'package:flutter/material.dart';

class MyBackground extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.pink[400],
            Colors.orange[900],
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomCenter
        )
      ),
    );
  }
}

