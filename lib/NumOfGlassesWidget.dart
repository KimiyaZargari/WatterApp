
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumOfGlassesWidget extends StatefulWidget {
  NumOfGlassesWidget();

  @override
  _NumOfGlassesWidgetState createState() => _NumOfGlassesWidgetState();
}

class _NumOfGlassesWidgetState extends State<NumOfGlassesWidget> {
  int goal = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'enter goal:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(width: 100.0),
          IconButton(
            icon: Icon(Icons.arrow_drop_down),
            onPressed: () {
              setState(() {
                if (goal > 0) goal -= 1;
              });
            },
            iconSize: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(2, 8, 2, 0),
            child: Text(
              '$goal',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
                color: Colors.blue,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.arrow_drop_up),
            onPressed: () {
              setState(() {
                if (goal < 9) goal += 1;
              });
            },
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}
