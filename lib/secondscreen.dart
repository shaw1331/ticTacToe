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
  int r1=0,r2=0,r3=0,c1=0,c2=0,c3=0,d1=0,d2=0;
  int r11=0,r21=0,r31=0,c11=0,c21=0,c31=0,d11=0,d21=0;
  int b=0;
//empty=100, circle(computer's move)=0 , cross= 1//
 if(b==0) {if(click1+click2+click3==100){ r1=1;}
  if(click4+click5+click6==100){ r2=1;}
  if(click7+click8+click9==100){ r3=1;}
  if(click1+click4+click7==100){ c1=1;}
  if(click2+click5+click8==100){ c2=1;}
  if(click3+click6+click9==100){ c3=1;}
  if(click1+click5+click9==100){ d1=1;}
  if(click3+click5+click7==100){ d2=1;}}
if (r1+r2+r3+c1+c2+c3+d1+d2==0){
  if(click1+click2+click3==102){
    r11=1;
    if(click1==100){return 1;}
    if(click2==100){return 2;}
    if(click3==100){return 3;}
  }
  if(click4+click5+click6==102){
    r21=1;
    if(click4==100){return 4;}
    if(click5==100){return 5;}
    if(click6==100){return 6;}
  }
  if(click7+click8+click9==102){
  r31=0;
  if(click7==100){return 7;}
  if(click8==100){return 8;}
  if(click9==100){return 9;}
  }
  if(click1+click4+click7==102){
  c11=1;
  if(click1==100){return 1;}
  if(click4==100){return 4;}
  if(click7==100){return 7;}}
  if(click2+click5+click8==102){
  c21=1;
  if(click2==100){return 2;}
  if(click5==100){return 5;}
  if(click8==100){return 8;}}
  if(click3+click6+click9==102){
    c31=1;
    if(click3==100){return 3;}
    if(click6==100){return 6;}
    if(click9==100){return 9;}
  }
  if(click1+click5+click9==102){
    d11=1;
    if(click1==100){return 1;}
    if(click5==100){return 5;}
    if(click9==100){return 9;}}
  if(click3+click5+click7==102){
  d21=1;
  if(click3==100){return 3;}
  if(click5==100){return 5;}
  if(click7==100){return 7;}}}
else{
  if(r1==1){
    if(click1==100){ return 1;}
    if(click2==100){ return 2;}
    if(click3==100){ return 3;}}
  if(r2==1){
    if(click4==100){ return 4;}
    if(click5==100){ return 5;}
    if(click6==100){ return 6;}}
  if(r3==1){
    if(click7==100){ return 7;}
    if(click8==100){ return 8;}
    if(click9==100){ return 9;}}
  if(c1==1){
    if(click1==100){ return 1;}
    if(click4==100){ return 4;}
    if(click7==100){ return 7;}}
  if(c2==1){
    if(click2==100){ return 2;}
    if(click5==100){ return 5;}
    if(click8==100){ return 8;}}
  if(c3==1){
    if(click3==100){ return 3;}
    if(click6==100){ return 6;}
    if(click9==100){ return 9;}}
  if(d1==1){
    if(click1==100){ return 1;}
    if(click5==100){ return 5;}
    if(click9==100){ return 9;}}
  if(d2==1){
    if(click3==100){ return 3;}
    if(click5==100){ return 5;}
    if(click7==100){ return 7;}}
}
int n=0;
var a = new List();
if(r1+r2+r3+c1+c2+c3+d1+d2+r11+r21+r31+c11+c21+c31+d11+d21==0){
  n++;
  if(click1==100){a.add(n);}
  n++;
  if(click2==100){a.add(n);}
  n++;
  if(click3==100){a.add(n);}
  n++;
  if(click4==100){a.add(n);}
  n++;
  if(click5==100){a.add(n);}
  n++;
  if(click6==100){a.add(n);}
  n++;
  if(click7==100){a.add(n);}
  n++;
  if(click8==100){a.add(n);}
  n++;
  if(click9==100){a.add(n);}

  int f= a.length;
  int g= Random().nextInt(f) + 1;

 return a.elementAt(g);
}





  }
  static int methodneeded(int g, int click,int click1,int click2,int click3,int click4,int click5,int click6,int click7,int click8,int click9 ){
    if (g==1){ click1=0;}
    if (g==2){ click2=0;}
    if (g==3){click3=0;}
    if (g==4){click4=0;}
    if (g==5){click5=0;}
    if (g==6){click6=0;}
    if (g==7){click7=0;}
    if (g==8){click8=0;}
    if (g==9){click9=0;}
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

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
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
        ],
      ),

    );
  }
}





