import 'package:flutter/material.dart';
import 'mainscreen.dart';
import 'colors.dart';
import 'dart:math';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  
  var click = 0;
  //click# =1 for circle;
  //click# = 0 for cross;
  var click1=100,click2=100,click3=100,click4=100,click5=100,click6=100,click7=100,click8=100,click9=100;
  int s=0; int g=0;

  static int CheckGameStatus(int click,int click1,int click2,int click3,int click4,int click5,int click6,int click7,int click8,int click9){
    int s=0; int cwins=0; int uwins=0;
    //check rows//
    if (click1+click2+click3==0){uwins=1;}
    if (click4+click5+click6==0){uwins=1;}
    if (click7+click8+click9==0){uwins=1;}
    //check columns//
    if (click1+click4+click7==0){uwins=1;}
    if (click2+click5+click8==0){uwins=1;}
    if (click3+click6+click9==0){uwins=1;}
    //check diagonals//
    if (click1+click5+click9==0){uwins=1;}
    if (click3+click5+click7==0){uwins=1;}

    if (click1+click2+click3==3){cwins=1;}
    if (click4+click5+click6==3){cwins=1;}
    if (click7+click8+click9==3){cwins=1;}
    //check columns//
    if (click1+click4+click7==3){cwins=1;}
    if (click2+click5+click8==3){cwins=1;}
    if (click3+click6+click9==3){cwins=1;}
    //check diagonals//
    if (click1+click5+click9==3){cwins=1;}
    if (click3+click5+click7==3){cwins=1;}

    if(uwins==1){
      s=1;
    }
    if(cwins==1){
      s=2;
    }
    if(click==9){
      s=3;
    }
    return s;
  }
  static int ComputersMove(int click,int click1,int click2,int click3,int click4,int click5,int click6,int click7,int click8,int click9){

  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(colButtons),
        title: Text("SecondScreen"),
      ),
      backgroundColor: Color.fromRGBO(41, 41, 41, 100),
      body: Column(
<<<<<<< HEAD
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Expanded(
                  child: Image(
                    image: AssetImage('images/grid1.jpeg'),
=======
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height:1,
            width:1,
             color: Color.fromRGBO(41, 41, 41, 100),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget> [
              Row(
                children: <Widget> [
                  Expanded(
                    child: RaisedButton(
                      onPressed: (){
                        setState(() {
                          if(s==0){if(click1==100){
                            click+=1;
                            click1 = click%2;}
                          s = CheckGameStatus( click ,click1, click2, click3, click4, click5, click6, click7, click8, click9);

                          }
                          }
                        );
                      },
                      padding: EdgeInsets.all(2),
                      child: Stack(
                        children: <Widget> [
                          Container(
                          child: Image(
                            image: AssetImage('images/3.png'),
                          ),
                        ),

                        Container(
                          child: Image.asset('images/cross$click1.png'),
                          ),
                        ]
                      ),
                    ),
>>>>>>> c253567d9bd1c8cc93252dd524f28c81b5684f74
                  ),
                  Expanded(
                    child: RaisedButton(
                      onPressed: (){
                        setState(() {
                          if(s==0){if(click2==100){
                            click+=1;
                            click2 = click%2;}
                          s = CheckGameStatus( click ,click1, click2, click3, click4, click5, click6, click7, click8, click9);}
                        });
                      },
                      padding: EdgeInsets.all(2),

                      child: Stack(
                          children: <Widget> [
                            Container(
                              child: Image(
                                image: AssetImage('images/4.png'),
                              ),
                            ),

                            Container(
                              child: Image.asset('images/cross$click2.png'),
                            ),
                          ]
                      ),
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      onPressed: (){
                        setState(() {
                          if(s==0){if(click3==100){
                            click+=1;
                            click3 = click%2;}
                          s = CheckGameStatus( click ,click1, click2, click3, click4, click5, click6, click7, click8, click9);}

                        });
                      },
                      padding: EdgeInsets.all(2),
                      child: Stack(
                          children: <Widget> [
                            Container(
                              child: Image(
                                image: AssetImage('images/3.png'),
                              ),
                            ),

                            Container(
                              child: Image.asset('images/cross$click3.png'),
                            ),
                          ]
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Row(
                    children: <Widget> [
                      Expanded(
                        child: RaisedButton(
                          onPressed: (){
                            setState(() {
                              if(s==0){if(click4==100){
                                click+=1;
                                click4 = click%2;}
                              s = CheckGameStatus( click ,click1, click2, click3, click4, click5, click6, click7, click8, click9);}

                            });
                          },
                          padding: EdgeInsets.all(2),
                          child: Stack(
                              children: <Widget> [
                                Container(
                                  child: Image(
                                    image: AssetImage('images/4.png'),
                                  ),

                                ),

                                Container(
                                  child: Image.asset('images/cross$click4.png'),
                                ),
                              ]
                          ),
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          onPressed: (){
                            setState(() {
                              if(s==0){if(click5==100){
                                click+=1;
                                click5 = click%2;}
                              s = CheckGameStatus( click ,click1, click2, click3, click4, click5, click6, click7, click8, click9);}

                            });
                          },
                          padding: EdgeInsets.all(2),
                          child: Stack(
                              children: <Widget> [
                                Container(
                                  child: Image(
                                    image: AssetImage('images/3.png'),
                                  ),
                                ),

                                Container(
                                  child: Image.asset('images/cross$click5.png'),
                                ),
                              ]
                          ),
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          onPressed: (){
                            setState(() {
                              if(s==0){if(click6==100){
                                click+=1;
                                click6 = click%2;}
                              s = CheckGameStatus( click ,click1, click2, click3, click4, click5, click6, click7, click8, click9);}

                            });
                          },
                          padding: EdgeInsets.all(2),
                          child: Stack(
                              children: <Widget> [
                                Container(
                                  child: Image(
                                    image: AssetImage('images/4.png'),
                                  ),
                                ),

                                Container(
                                  child: Image.asset('images/cross$click6.png'),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),


                   Image(
                      image: AssetImage('images/game$s.png'),
                    ),

                ],
              ),
              Row(
                children: <Widget> [
                  Expanded(
                    child: RaisedButton(
                      onPressed: (){
                        setState(() {
                          if(s==0){if(click7==100){
                            click+=1;
                            click7 = click%2;}
                          s = CheckGameStatus( click ,click1, click2, click3, click4, click5, click6, click7, click8, click9);}

                        });
                      },
                      padding: EdgeInsets.all(2),
                      child: Stack(
                          children: <Widget> [
                            Container(
                              child: Image(
                                image: AssetImage('images/3.png'),
                              ),
                            ),

                            Container(
                              child: Image.asset('images/cross$click7.png'),
                            ),
                          ]
                      ),
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      onPressed: (){
                        setState(() {
                          if(s==0){if(click8==100){
                            click+=1;
                            click8 = click%2;}
                          s = CheckGameStatus( click ,click1, click2, click3, click4, click5, click6, click7, click8, click9);}

                        });
                      },
                      padding: EdgeInsets.all(2),
                      child: Stack(
                          children: <Widget> [
                            Container(
                              child: Image(
                                image: AssetImage('images/4.png'),
                              ),
                            ),

                            Container(
                              child: Image.asset('images/cross$click8.png'),
                            ),
                          ]
                      ),
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      onPressed: (){
                        setState(() {
                          if(s==0){if(click9==100){
                            click+=1;
                            click9 = click%2;}
                          s = CheckGameStatus( click ,click1, click2, click3, click4, click5, click6, click7, click8, click9);}

                        });
                      },
                      padding: EdgeInsets.all(2),
                      child: Stack(
                          children: <Widget> [
                            Container(
                              child: Image(
                                image: AssetImage('images/3.png'),
                              ),
                            ),

                            Container(
                              child: Image.asset('images/cross$click9.png'),
                            ),
                          ]
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
<<<<<<< HEAD
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
=======

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
>>>>>>> c253567d9bd1c8cc93252dd524f28c81b5684f74
              FlatButton(
                onPressed: () {

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                  );
                },
                color: Color(colnav),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Back",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
<<<<<<< HEAD
            ],
          )
=======

              FlatButton(
                onPressed: () {

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
                color: Color(colnav),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Reset",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
>>>>>>> c253567d9bd1c8cc93252dd524f28c81b5684f74
        ],
      ),
    );
  }
}





