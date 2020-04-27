import 'package:flutter/material.dart';

import 'NumOfGlassesWidget.dart';
import 'WaterWidget.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> waters = [NumOfGlassesWidget()];
  int glassesDrunk = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
          actions: <Widget>[
            // action button
            IconButton(
              icon: Icon(Icons.undo),
              onPressed: () {
                setState(() {
                  if(glassesDrunk >0){
                    glassesDrunk -=1;
                    waters.removeLast();
                  }
                });
              },
            ),
          ],
          title: Text('my first app'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent[600]),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: waters,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Colors.blueAccent,
        ),
        onPressed: () {
          setState(() {
            if (glassesDrunk < 9) {
              glassesDrunk += 1;
              waters.add(WaterWidget(
                  text: glassesDrunk,
                  color: Colors.blue[glassesDrunk * 100])
              );
            }
          });
        },
      ),
    );
  }
}
