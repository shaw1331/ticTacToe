import 'package:flutter/material.dart';
import 'mainscreen.dart';
import 'colors.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(colButtons),
        title: Text("Settings"),
      ),
      backgroundColor: Color(colBg),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Align(
          //     alignment: Alignment.topLeft,
          //     child: Container(
          //       padding: const EdgeInsets.fromLTRB(15, 10, 1, 10),
          //       child: Text(
          //         "Basics",
          //         style: TextStyle(color: Colors.white, fontSize: 20),
          //       ),
          //       width: 200.0,
          //       height: 80.0,
          //     )),

          Container(
            child: Text(
              "Hemlo",
              style: TextStyle(color: Colors.white),
            ),
            padding: const EdgeInsets.all(0.0),
            width: 80.0,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}
