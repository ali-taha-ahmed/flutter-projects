import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final ourChild;
  final Function onPress;
  ReusableCard({@required this.color, this.ourChild, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: ourChild,
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
      ),
    );
  }
}

class GenderCard extends StatelessWidget {
  final Icon icon;
  final String label;
  GenderCard({this.icon, this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
