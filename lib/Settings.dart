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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              // padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              color: Colors.orangeAccent,
              width: 200.0,
              height: 680.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                      color: Colors.blueAccent,
                      width: 200.0,
                      height: 120.0,
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 50),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Audio",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),
                      )),
                  Container(
                      color: Colors.blueAccent,
                      width: 200.0,
                      height: 120.0,
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 50),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Music",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),
                      )),
                  Container(
                      color: Colors.blueAccent,
                      width: 200.0,
                      height: 120.0,
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 50),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "SFX",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),
                      )),
                ],
              )
              //  Align(
              //   alignment: Alignment.center,
              //   child: Text(
              //     "Audio",
              //     style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 20,
              //         fontWeight: FontWeight.w800),
              //   ),
              // ),
              ),
          Container(
            // padding: const EdgeInsets.fromLTRB(0, 60, 30, 10),
            color: Colors.orangeAccent,
            width: 185.0,
            height: 680.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                    color: Colors.blueAccent,
                    width: 200.0,
                    height: 120.0,
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 50),
                    child: Align(
                      alignment: Alignment.centerLeft,
                    )),
                Container(
                    color: Colors.blueAccent,
                    width: 200.0,
                    height: 120.0,
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 50),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Music",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      ),
                    )),
                Container(
                    color: Colors.blueAccent,
                    width: 200.0,
                    height: 120.0,
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 50),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "SFX",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      ),
                    )),
              ],
              // child: Text(
              //   "Tabs",
              //   style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 20,
              //       fontWeight: FontWeight.w800),
              // ),
            ),
          ),
          // Container(
          //   padding: const EdgeInsets.fromLTRB(100, 60, 60, 10),
          //   color: Colors.orangeAccent,
          //   width: 200.0,
          //   height: 100.0,
          //   child: Align(
          //     alignment: Alignment.topLeft,
          //     child: Text(
          //       "SFX",
          //       style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 20,
          //           fontWeight: FontWeight.w800),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
