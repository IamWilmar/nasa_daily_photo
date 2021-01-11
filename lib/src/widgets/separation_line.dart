import 'package:flutter/material.dart';

class SeparationLine extends StatelessWidget {
  const SeparationLine({
    Key key,
    @required this.width, this.color,
  }) : super(key: key);
  final Color color;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      width: width/2,
      height: 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: color,
      ),
    );
  }
}