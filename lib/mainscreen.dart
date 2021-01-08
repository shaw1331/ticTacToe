import 'package:flutter/material.dart';
import 'colors.dart';
import 'secondscreen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(colButtons),
        leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white54), onPressed: null),
        title: Text("Mainscreen"),
      ),
      backgroundColor: Color(colBg),
      body: Center(
        child: RaisedButton(
          color: Color(colButtons),
          // child: Text(
          //   'Play',
          //   style: TextStyle(
          //     color: Colors.white,
          //   ),
          // ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Play the game',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Icon(
                Icons.play_circle_outline_rounded,
                color: Colors.white,
                size: 50,
              ),
            ],
          ),
          // child: new IconButton(icon: Icon(Icons.play_arrow)),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
        ),
      ),
    );
  }
}
