import 'package:flutter/material.dart';
import 'mainscreen.dart';
import 'colors.dart';

class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(colButtons),
        title: Text("Stats"),
      ),
      backgroundColor: Color.fromRGBO(41, 41, 41, 100),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

              Container(height:200,
                  width: 200,
                  child: Image(image: AssetImage('images/johain.jpeg'), )),
            Container(height:200,
                width: 200,
                child: Image(image: AssetImage('images/sohain.jpeg'), )),


            FlatButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MainScreen()),
                );
              },
              color: Color(colnav),
              padding: EdgeInsets.all(10.0),
              child: Column(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Text(
                    "Back",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
