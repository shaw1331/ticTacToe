import 'package:flutter/material.dart';
import 'package:tictactoe/Settings.dart';
import 'package:tictactoe/Stats.dart';
import 'colors.dart';
import 'prePlay.dart';
import 'secondscreen.dart';
import 'variables.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(colBg),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 230,
              width: 200,
              child: Image.asset('images/gifmainpage.gif'),
              padding: EdgeInsets.fromLTRB(10, 1, 10, 10),
            ),
            Card(
              child: RaisedButton(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                color: Color(colButtons),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.play_circle_outline_rounded,
                      color: Color(colPurp),
                      size: 100,
                    ),
                  ],
                ),
                //child: new IconButton(icon: Icon(Icons.play_arrow)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Preplay()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Color(colPurp), width: 2)),
              ),
              color: Color(colBg),
            ),
            Card(
              child: RaisedButton(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

                color: Color(colButtons),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.equalizer_rounded,
                      color: Color(colPurp),
                      size: 100,
                    ),
                  ],
                ),
                // child: new IconButton(icon: Icon(Icons.play_arrow)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Stats()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Color(colPurp), width: 2)),
              ),
              color: Color(colBg),
            ),
            Card(
              child: RaisedButton(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

                color: Color(colButtons),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.miscellaneous_services_rounded,
                      color: Color(colPurp),
                      size: 100,
                    ),
                  ],
                ),
                // child: new IconButton(icon: Icon(Icons.play_arrow)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VariablesPage()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Color(colPurp), width: 2)),
              ),
              color: Color(colBg),
            ),
          ],
        ),
      ),
    );
  }
}
