
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WaterWidget extends StatelessWidget {
  final int text;
  final Color color;

  WaterWidget({this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          '$text',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: color,
      ),
      padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
    );
  }
}
