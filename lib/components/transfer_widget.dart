import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MoneyTransferWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.27,
      width: width * 0.9,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Card(
        color: Colors.white,
        elevation: 0.0,
        child: Column(
          children: [
            PriceTag(
              title: "You Pay",
            ),
            Divider(height: 0),
            PriceTag(
              title: "They Receive",
            )
          ],
        ),
      ),
    );
  }
}

class PriceTag extends StatelessWidget {
  final String title;

  PriceTag({this.title});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(color: Colors.black.withAlpha(10)))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/images/ghanaian-flag.svg",
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      "GHS",
                      textAlign: TextAlign.center,
                    ),
                    width: double.infinity,
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("$title", textAlign: TextAlign.end),
                    padding: EdgeInsets.only(right: 20),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    width: double.infinity,
                    child: Text(
                      "¢259.90",
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.end,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
