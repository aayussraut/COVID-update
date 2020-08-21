import 'package:flutter/material.dart';
import 'package:corona_update/constant.dart';

class RowSection extends StatelessWidget {
  RowSection({this.title, this.count, this.color});
  final String title;
  final String count;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 8),
        decoration: kContainerBoxDecoration,
        height: 75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: kSmallTextColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              count,
              style: TextStyle(color: color, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
