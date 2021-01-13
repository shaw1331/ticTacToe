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
<<<<<<< HEAD
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
=======
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
                  children: <Widget> [
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
                              child: Image(image: AssetImage('images/13.png')
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
                        padding: EdgeInsets.all(2),
                        color: Colors.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[

                            Container(
                              height: 135,
                              width: 135,
                              child: Image(image: AssetImage('images/11.png')
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
                        padding: EdgeInsets.all(2),
                        color: Color(colButtons),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 135,
                              width: 135,
                              child: Image(image: AssetImage('images/credits.png')
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

            ],
          ),
>>>>>>> c253567d9bd1c8cc93252dd524f28c81b5684f74
        ),
      ),
    );
  }
}
