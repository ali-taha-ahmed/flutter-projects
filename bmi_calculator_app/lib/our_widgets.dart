import 'package:flutter/material.dart';

//
class ReusableCard extends StatelessWidget {
  final Color color;
  final ourChild;
  ReusableCard({@required this.color, this.ourChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ourChild,
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
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
          style: TextStyle(fontSize: 18.0, color: Colors.white54),
        ),
      ],
    );
  }
}
