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
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Color(colPurp), width: 3)),
                  color: Color(colButtons),
                  child: Text(
                    "SINGLE PLAYER",
                    style: TextStyle(
                        color: Color(colPurp),
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                  padding: const EdgeInsets.fromLTRB(80.0, 15.0, 80.0, 15.0),
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
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Color(colPurp), width: 3)),
                  child: Text(
                    "TWO PLAYER",
                    style: TextStyle(
                        color: Color(colPurp),
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                  padding: const EdgeInsets.fromLTRB(94.0, 15.0, 94.0, 15.0),
                )),
          ),
        ],
      ),
    );
  }
}
