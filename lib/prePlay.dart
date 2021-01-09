import 'package:flutter/material.dart';

import 'colors.dart';

class Preplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(colButtons),
        title: Text("Choose a mode"),
      ),
      backgroundColor: Color(colBg),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(0.0),
            // color: Colors.orangeAccent,
            width: 80.0,
            height: 80.0,
            child: Align(
                alignment: Alignment.center,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Color(colButtons),
                  child: Text(
                    "Single Player",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                  padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                )),
          ),
          Container(
            padding: const EdgeInsets.all(0.0),
            // color: Colors.orangeAccent,
            width: 80.0,
            height: 80.0,
            child: Align(
                alignment: Alignment.center,
                child: RaisedButton(
                  onPressed: () {},
                  color: Color(colButtons),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    "Two Player",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                  padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                )),
          ),
        ],
      ),
    );
  }
}
