import 'package:flutter/material.dart';
import 'package:tictactoe/Settings.dart';
import 'package:tictactoe/Stats.dart';
import 'colors.dart';
import 'secondscreen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(colBg),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Container(
               height: 200,
              width: 200,
              child: Image.asset('images/gifmainpage.gif'),
            ),
            Card(
              child: RaisedButton(
                color: Color(colButtons),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.play_circle_outline_rounded,
                      color: Colors.white,
                      size: 100,
                    ),
                    Text(
                      'Play',
                      style: TextStyle(
                        fontFamily: 'Satisfy',
                          color: Colors.white,
                          fontSize: 20,

                      ),
                    ),
                  ],
                ),
                //child: new IconButton(icon: Icon(Icons.play_arrow)),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
              ),
            ),
            Card(
              child: RaisedButton(
                color: Color(colButtons),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.bar_chart,
                      color: Colors.white,
                      size: 100,
                    ),
                    Text(
                      'Stats',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Satisfy',
                      ),
                    ),
                  ],
                ),
                // child: new IconButton(icon: Icon(Icons.play_arrow)),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Stats()),
                  );
                },
              ),
            ),
            Card(
              child: RaisedButton(
                color: Color(colButtons),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 100,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Satisfy',
                      ),
                    ),
                  ],
                ),
                // child: new IconButton(icon: Icon(Icons.play_arrow)),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
