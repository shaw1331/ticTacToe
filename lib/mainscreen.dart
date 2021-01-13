import 'package:flutter/material.dart';
import 'package:tictactoe/Stats.dart';
import 'colors.dart';
import 'prePlay.dart';
import 'meme.dart';
import 'Credits.dart';
import 'secondscreen.dart';
import 'variables.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(colBg),
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/background.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      child: RaisedButton(
                        padding: EdgeInsets.all(2),
                        color: Colors.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 135,
                              width: 135,
                              child: Image(image: AssetImage('images/13.png')),
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
                      ),
                    ),
                    Card(
                      child: RaisedButton(
                        padding: EdgeInsets.all(2),
                        color: Colors.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 135,
                              width: 135,
                              child: Image(image: AssetImage('images/11.png')),
                            ),
                          ],
                        ),
                        // child: new IconButton(icon: Icon(Icons.play_arrow)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VariablesPage()),
                          );
                        },
                      ),
                    ),
                    /* Credits Button */
                    Card(
                      child: RaisedButton(
                        padding: EdgeInsets.all(2),
                        color: Color(colButtons),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 135,
                              width: 135,
                              child: Image(
                                  image: AssetImage('images/credits.png')),
                            ),
                          ],
                        ),
                        // child: new IconButton(icon: Icon(Icons.play_arrow)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Credits()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
