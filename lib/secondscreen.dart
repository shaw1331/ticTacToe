import 'package:flutter/material.dart';
import 'mainscreen.dart';
import 'colors.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51, 51, 51, 40),
        title: Text("SecondScreen"),
      ),
      backgroundColor: Color.fromRGBO(41, 41, 41, 100),
      body: Center(
        child: RaisedButton(
          child: Text(
            'Back',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: new Color(colButtons),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          },
        ),
      ),
    );
  }
}
