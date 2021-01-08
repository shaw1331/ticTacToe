import 'package:flutter/material.dart';
import 'colors.dart';
import 'secondscreen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51, 51, 51, 32),
        leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white54), onPressed: null),
        title: Text("Mainscreen"),
      ),
      backgroundColor: Color(colBg),
      body: Center(
        child: RaisedButton(
          child: Text(
            'Play',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: new Color(colButtons),
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
