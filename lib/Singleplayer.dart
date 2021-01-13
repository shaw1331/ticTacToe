import 'package:flutter/material.dart';
import 'mainscreen.dart';
import 'colors.dart';
import 'dart:math';

class SinglePlayer extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SinglePlayer> {
  var click = 1;
  //click# =1 for circle(user);
  //click# = 0 for cross(computer);
  var click1 = 100,
      click2 = 100,
      click3 = 100,
      click4 = 100,
      click5 = 100,
      click6 = 100,
      click7 = 100,
      click8 = 100,
      click9 = 100;
  int s = 0;
  int g = 0;

  static int CheckGameStatus(int click, int click1, int click2, int click3,
      int click4, int click5, int click6, int click7, int click8, int click9) {
    int s = 0;
    int cwins = 0;
    int uwins = 0;
    //check rows//
    if (click1 + click2 + click3 == 0) {
      uwins = 1;
    }
    if (click4 + click5 + click6 == 0) {
      uwins = 1;
    }
    if (click7 + click8 + click9 == 0) {
      uwins = 1;
    }
    //check columns//
    if (click1 + click4 + click7 == 0) {
      uwins = 1;
    }
    if (click2 + click5 + click8 == 0) {
      uwins = 1;
    }
    if (click3 + click6 + click9 == 0) {
      uwins = 1;
    }
    //check diagonals//
    if (click1 + click5 + click9 == 0) {
      uwins = 1;
    }
    if (click3 + click5 + click7 == 0) {
      uwins = 1;
    }

    if (click1 + click2 + click3 == 3) {
      cwins = 1;
    }
    if (click4 + click5 + click6 == 3) {
      cwins = 1;
    }
    if (click7 + click8 + click9 == 3) {
      cwins = 1;
    }
    //check columns//
    if (click1 + click4 + click7 == 3) {
      cwins = 1;
    }
    if (click2 + click5 + click8 == 3) {
      cwins = 1;
    }
    if (click3 + click6 + click9 == 3) {
      cwins = 1;
    }
    //check diagonals//
    if (click1 + click5 + click9 == 3) {
      cwins = 1;
    }
    if (click3 + click5 + click7 == 3) {
      cwins = 1;
    }

    if (uwins == 1) {
      s = 1;
    }
    if (cwins == 1) {
      s = 2;
    }
    if (click == 11) {
      s = 3;
    }
    return s;
  }

  static int ComputersMove(int click, int click1, int click2, int click3,
      int click4, int click5, int click6, int click7, int click8, int click9) {
    //checking if computer can win
    if (click1 + click2 + click3 == 100) {
      if (click1 == 100) {
        return 1;
      }
      if (click2 == 100) {
        return 2;
      }
      if (click3 == 100) {
        return 3;
      }
    }
    if (click4 + click5 + click6 == 100) {
      if (click4 == 100) {
        return 4;
      }
      if (click5 == 100) {
        return 5;
      }
      if (click6 == 100) {
        return 6;
      }
    }
    if (click7 + click8 + click9 == 100) {
      if (click7 == 100) {
        return 7;
      }
      if (click8 == 100) {
        return 8;
      }
      if (click9 == 100) {
        return 9;
      }
    }
    if (click1 + click4 + click7 == 100) {
      if (click1 == 100) {
        return 1;
      }
      if (click4 == 100) {
        return 4;
      }
      if (click7 == 100) {
        return 7;
      }
    }
    if (click2 + click5 + click8 == 100) {
      if (click2 == 100) {
        return 2;
      }
      if (click5 == 100) {
        return 5;
      }
      if (click8 == 100) {
        return 8;
      }
    }
    if (click2 + click5 + click8 == 100) {
      if (click2 == 100) {
        return 2;
      }
      if (click5 == 100) {
        return 5;
      }
      if (click8 == 100) {
        return 8;
      }
    }
    if (click3 + click6 + click9 == 100) {
      if (click3 == 100) {
        return 3;
      }
      if (click6 == 100) {
        return 6;
      }
      if (click9 == 100) {
        return 9;
      }
    }
    if (click1 + click5 + click9 == 100) {
      if (click1 == 100) {
        return 1;
      }
      if (click5 == 100) {
        return 5;
      }
      if (click9 == 100) {
        return 9;
      }
    }
    if (click3 + click5 + click7 == 100) {
      if (click3 == 100) {
        return 3;
      }
      if (click5 == 100) {
        return 5;
      }
      if (click7 == 100) {
        return 7;
      }
    }
    //checking if user can win in next move
    if (click1 + click2 + click3 == 102) {
      if (click1 == 100) {
        return 1;
      }
      if (click2 == 100) {
        return 2;
      }
      if (click3 == 100) {
        return 3;
      }
    }
    if (click4 + click5 + click6 == 102) {
      if (click4 == 100) {
        return 4;
      }
      if (click5 == 100) {
        return 5;
      }
      if (click6 == 100) {
        return 6;
      }
    }
    if (click7 + click8 + click9 == 102) {
      if (click7 == 100) {
        return 1;
      }
      if (click8 == 100) {
        return 2;
      }
      if (click9 == 100) {
        return 3;
      }
    }
    if (click1 + click4 + click7 == 102) {
      if (click1 == 100) {
        return 1;
      }
      if (click4 == 100) {
        return 4;
      }
      if (click7 == 100) {
        return 7;
      }
    }
    if (click2 + click5 + click8 == 102) {
      if (click2 == 100) {
        return 2;
      }
      if (click5 == 100) {
        return 5;
      }
      if (click8 == 100) {
        return 8;
      }
    }
    if (click2 + click5 + click8 == 102) {
      if (click2 == 100) {
        return 2;
      }
      if (click5 == 100) {
        return 5;
      }
      if (click8 == 100) {
        return 8;
      }
    }
    if (click3 + click6 + click9 == 102) {
      if (click3 == 100) {
        return 3;
      }
      if (click6 == 100) {
        return 6;
      }
      if (click9 == 100) {
        return 9;
      }
    }
    if (click1 + click5 + click9 == 102) {
      if (click1 == 100) {
        return 1;
      }
      if (click5 == 100) {
        return 5;
      }
      if (click9 == 100) {
        return 9;
      }
    }
    if (click3 + click5 + click7 == 102) {
      if (click3 == 100) {
        return 3;
      }
      if (click5 == 100) {
        return 5;
      }
      if (click7 == 100) {
        return 7;
      }
    } else {
      var array = new List();
      int n = 1;
      if (click1 == 100) {
        array.add(n);
      }
      n++;
      if (click2 == 100) {
        array.add(n);
      }
      n++;
      if (click3 == 100) {
        array.add(n);
      }
      n++;
      if (click4 == 100) {
        array.add(n);
      }
      n++;
      if (click5 == 100) {
        array.add(n);
      }
      n++;
      if (click6 == 100) {
        array.add(n);
      }
      n++;
      if (click7 == 100) {
        array.add(n);
      }
      n++;
      if (click8 == 100) {
        array.add(n);
      }
      n++;
      if (click9 == 100) {
        array.add(n);
      }
      int g = array.length;
      Random random = new Random();
      int f = random.nextInt(g) + 1;
      return f;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(colButtons),
        title: Text("Single Player"),
      ),
      backgroundColor: Color.fromRGBO(41, 41, 41, 100),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 1,
            width: 1,
            color: Color.fromRGBO(41, 41, 41, 100),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          if (s == 0) {
                            if (click1 == 100) {
                              click += 2;
                              click1 = click % 2;
                              s = CheckGameStatus(
                                  click,
                                  click1,
                                  click2,
                                  click3,
                                  click4,
                                  click5,
                                  click6,
                                  click7,
                                  click8,
                                  click9);
                              int g = ComputersMove(
                                  click,
                                  click1,
                                  click2,
                                  click3,
                                  click4,
                                  click5,
                                  click6,
                                  click7,
                                  click8,
                                  click9);
                              var a = 1;
                              if (a == 1) {
                                if (g == 1 && click1 == 100) {
                                  click1 = 0;
                                }
                                if (g == 2 && click2 == 100) {
                                  click2 = 0;
                                }
                                if (g == 3 && click3 == 100) {
                                  click3 = 0;
                                }
                                if (g == 4 && click4 == 100) {
                                  click4 = 0;
                                }
                                if (g == 5 && click5 == 100) {
                                  click5 = 0;
                                }
                                if (g == 6 && click6 == 100) {
                                  click6 = 0;
                                }
                                if (g == 7 && click7 == 100) {
                                  click7 = 0;
                                }
                                if (g == 8 && click8 == 100) {
                                  click8 = 0;
                                }
                                if (g == 9 && click9 == 100) {
                                  click9 = 0;
                                }
                              }

                              s = CheckGameStatus(
                                  click,
                                  click1,
                                  click2,
                                  click3,
                                  click4,
                                  click5,
                                  click6,
                                  click7,
                                  click8,
                                  click9);
                            }
                          }
                        });
                      },
                      padding: EdgeInsets.all(2),
                      child: Stack(children: <Widget>[
                        Container(
                          child: Image(
                            image: AssetImage('images/3.png'),
                          ),
                        ),
                        Container(
                          child: Image.asset('images/cross$click1.png'),
                        ),
                      ]),
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          if (s == 0) {
                            if (click2 == 100) {
                              click += 2;
                              click2 = click % 2;
                              s = CheckGameStatus(
                                  click,
                                  click1,
                                  click2,
                                  click3,
                                  click4,
                                  click5,
                                  click6,
                                  click7,
                                  click8,
                                  click9);
                              int g = ComputersMove(
                                  click,
                                  click1,
                                  click2,
                                  click3,
                                  click4,
                                  click5,
                                  click6,
                                  click7,
                                  click8,
                                  click9);
                              var a = 1;
                              if (a == 1) {
                                if (g == 1 && click1 == 100) {
                                  click1 = 0;
                                }
                                if (g == 2 && click2 == 100) {
                                  click2 = 0;
                                }
                                if (g == 3 && click3 == 100) {
                                  click3 = 0;
                                }
                                if (g == 4 && click4 == 100) {
                                  click4 = 0;
                                }
                                if (g == 5 && click5 == 100) {
                                  click5 = 0;
                                }
                                if (g == 6 && click6 == 100) {
                                  click6 = 0;
                                }
                                if (g == 7 && click7 == 100) {
                                  click7 = 0;
                                }
                                if (g == 8 && click8 == 100) {
                                  click8 = 0;
                                }
                                if (g == 9 && click9 == 100) {
                                  click9 = 0;
                                }
                              }
                              s = CheckGameStatus(
                                  click,
                                  click1,
                                  click2,
                                  click3,
                                  click4,
                                  click5,
                                  click6,
                                  click7,
                                  click8,
                                  click9);
                            }
                          }
                        });
                      },
                      padding: EdgeInsets.all(2),
                      child: Stack(children: <Widget>[
                        Container(
                          child: Image(
                            image: AssetImage('images/4.png'),
                          ),
                        ),
                        Container(
                          child: Image.asset('images/cross$click2.png'),
                        ),
                      ]),
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          if (s == 0) {
                            if (click3 == 100) {
                              click += 2;
                              click3 = click % 2;
                              s = CheckGameStatus(
                                  click,
                                  click1,
                                  click2,
                                  click3,
                                  click4,
                                  click5,
                                  click6,
                                  click7,
                                  click8,
                                  click9);
                              int g = ComputersMove(
                                  click,
                                  click1,
                                  click2,
                                  click3,
                                  click4,
                                  click5,
                                  click6,
                                  click7,
                                  click8,
                                  click9);
                              var a = 1;
                              if (a == 1) {
                                if (g == 1 && click1 == 100) {
                                  click1 = 0;
                                }
                                if (g == 2 && click2 == 100) {
                                  click2 = 0;
                                }
                                if (g == 3 && click3 == 100) {
                                  click3 = 0;
                                }
                                if (g == 4 && click4 == 100) {
                                  click4 = 0;
                                }
                                if (g == 5 && click5 == 100) {
                                  click5 = 0;
                                }
                                if (g == 6 && click6 == 100) {
                                  click6 = 0;
                                }
                                if (g == 7 && click7 == 100) {
                                  click7 = 0;
                                }
                                if (g == 8 && click8 == 100) {
                                  click8 = 0;
                                }
                                if (g == 9 && click9 == 100) {
                                  click9 = 0;
                                }
                              }
                              s = CheckGameStatus(
                                  click,
                                  click1,
                                  click2,
                                  click3,
                                  click4,
                                  click5,
                                  click6,
                                  click7,
                                  click8,
                                  click9);
                            }
                          }
                        });
                      },
                      padding: EdgeInsets.all(2),
                      child: Stack(children: <Widget>[
                        Container(
                          child: Image(
                            image: AssetImage('images/3.png'),
                          ),
                        ),
                        Container(
                          child: Image.asset('images/cross$click3.png'),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          onPressed: () {
                            setState(() {
                              if (s == 0) {
                                if (click4 == 100) {
                                  click += 2;
                                  click4 = click % 2;
                                  s = CheckGameStatus(
                                      click,
                                      click1,
                                      click2,
                                      click3,
                                      click4,
                                      click5,
                                      click6,
                                      click7,
                                      click8,
                                      click9);
                                  int g = ComputersMove(
                                      click,
                                      click1,
                                      click2,
                                      click3,
                                      click4,
                                      click5,
                                      click6,
                                      click7,
                                      click8,
                                      click9);
                                  var a = 1;
                                  if (a == 1) {
                                    if (g == 1 && click1 == 100) {
                                      click1 = 0;
                                    }
                                    if (g == 2 && click2 == 100) {
                                      click2 = 0;
                                    }
                                    if (g == 3 && click3 == 100) {
                                      click3 = 0;
                                    }
                                    if (g == 4 && click4 == 100) {
                                      click4 = 0;
                                    }
                                    if (g == 5 && click5 == 100) {
                                      click5 = 0;
                                    }
                                    if (g == 6 && click6 == 100) {
                                      click6 = 0;
                                    }
                                    if (g == 7 && click7 == 100) {
                                      click7 = 0;
                                    }
                                    if (g == 8 && click8 == 100) {
                                      click8 = 0;
                                    }
                                    if (g == 9 && click9 == 100) {
                                      click9 = 0;
                                    }
                                  }
                                  s = CheckGameStatus(
                                      click,
                                      click1,
                                      click2,
                                      click3,
                                      click4,
                                      click5,
                                      click6,
                                      click7,
                                      click8,
                                      click9);
                                }
                              }
                            });
                          },
                          padding: EdgeInsets.all(2),
                          child: Stack(children: <Widget>[
                            Container(
                              child: Image(
                                image: AssetImage('images/4.png'),
                              ),
                            ),
                            Container(
                              child: Image.asset('images/cross$click4.png'),
                            ),
                          ]),
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          onPressed: () {
                            setState(() {
                              if (s == 0) {
                                if (click5 == 100) {
                                  click += 2;
                                  click5 = click % 2;
                                  s = CheckGameStatus(
                                      click,
                                      click1,
                                      click2,
                                      click3,
                                      click4,
                                      click5,
                                      click6,
                                      click7,
                                      click8,
                                      click9);
                                  int g = ComputersMove(
                                      click,
                                      click1,
                                      click2,
                                      click3,
                                      click4,
                                      click5,
                                      click6,
                                      click7,
                                      click8,
                                      click9);
                                  var a = 1;
                                  if (a == 1) {
                                    if (g == 1 && click1 == 100) {
                                      click1 = 0;
                                    }
                                    if (g == 2 && click2 == 100) {
                                      click2 = 0;
                                    }
                                    if (g == 3 && click3 == 100) {
                                      click3 = 0;
                                    }
                                    if (g == 4 && click4 == 100) {
                                      click4 = 0;
                                    }
                                    if (g == 5 && click5 == 100) {
                                      click5 = 0;
                                    }
                                    if (g == 6 && click6 == 100) {
                                      click6 = 0;
                                    }
                                    if (g == 7 && click7 == 100) {
                                      click7 = 0;
                                    }
                                    if (g == 8 && click8 == 100) {
                                      click8 = 0;
                                    }
                                    if (g == 9 && click9 == 100) {
                                      click9 = 0;
                                    }
                                  }
                                  s = CheckGameStatus(
                                      click,
                                      click1,
                                      click2,
                                      click3,
                                      click4,
                                      click5,
                                      click6,
                                      click7,
                                      click8,
                                      click9);
                                }
                              }
                            });
                          },
                          padding: EdgeInsets.all(2),
                          child: Stack(children: <Widget>[
                            Container(
                              child: Image(
                                image: AssetImage('images/3.png'),
                              ),
                            ),
                            Container(
                              child: Image.asset('images/cross$click5.png'),
                            ),
                          ]),
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          onPressed: () {
                            setState(() {
                              if (s == 0) {
                                if (click6 == 100) {
                                  click += 2;
                                  click6 = click % 2;

                                  s = CheckGameStatus(
                                      click,
                                      click1,
                                      click2,
                                      click3,
                                      click4,
                                      click5,
                                      click6,
                                      click7,
                                      click8,
                                      click9);
                                  int g = ComputersMove(
                                      click,
                                      click1,
                                      click2,
                                      click3,
                                      click4,
                                      click5,
                                      click6,
                                      click7,
                                      click8,
                                      click9);
                                  var a = 1;
                                  if (a == 1) {
                                    if (g == 1 && click1 == 100) {
                                      click1 = 0;
                                    }
                                    if (g == 2 && click2 == 100) {
                                      click2 = 0;
                                    }
                                    if (g == 3 && click3 == 100) {
                                      click3 = 0;
                                    }
                                    if (g == 4 && click4 == 100) {
                                      click4 = 0;
                                    }
                                    if (g == 5 && click5 == 100) {
                                      click5 = 0;
                                    }
                                    if (g == 6 && click6 == 100) {
                                      click6 = 0;
                                    }
                                    if (g == 7 && click7 == 100) {
                                      click7 = 0;
                                    }
                                    if (g == 8 && click8 == 100) {
                                      click8 = 0;
                                    }
                                    if (g == 9 && click9 == 100) {
                                      click9 = 0;
                                    }
                                  }
                                  s = CheckGameStatus(
                                      click,
                                      click1,
                                      click2,
                                      click3,
                                      click4,
                                      click5,
                                      click6,
                                      click7,
                                      click8,
                                      click9);
                                }
                              }
                            });
                          },
                          padding: EdgeInsets.all(2),
                          child: Stack(children: <Widget>[
                            Container(
                              child: Image(
                                image: AssetImage('images/4.png'),
                              ),
                            ),
                            Container(
                              child: Image.asset('images/cross$click6.png'),
                            ),
                          ]),
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
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          if (s == 0) {
                            if (click7 == 100) {
                              click += 2;
                              click7 = click % 2;
                              s = CheckGameStatus(
                                  click,
                                  click1,
                                  click2,
                                  click3,
                                  click4,
                                  click5,
                                  click6,
                                  click7,
                                  click8,
                                  click9);
                              int g = ComputersMove(
                                  click,
                                  click1,
                                  click2,
                                  click3,
                                  click4,
                                  click5,
                                  click6,
                                  click7,
                                  click8,
                                  click9);
                              var a = 1;
                              if (a == 1) {
                                if (g == 1 && click1 == 100) {
                                  click1 = 0;
                                }
                                if (g == 2 && click2 == 100) {
                                  click2 = 0;
                                }
                                if (g == 3 && click3 == 100) {
                                  click3 = 0;
                                }
                                if (g == 4 && click4 == 100) {
                                  click4 = 0;
                                }
                                if (g == 5 && click5 == 100) {
                                  click5 = 0;
                                }
                                if (g == 6 && click6 == 100) {
                                  click6 = 0;
                                }
                                if (g == 7 && click7 == 100) {
                                  click7 = 0;
                                }
                                if (g == 8 && click8 == 100) {
                                  click8 = 0;
                                }
                                if (g == 9 && click9 == 100) {
                                  click9 = 0;
                                }
                              }
                              s = CheckGameStatus(
                                  click,
                                  click1,
                                  click2,
                                  click3,
                                  click4,
                                  click5,
                                  click6,
                                  click7,
                                  click8,
                                  click9);
                            }
                          }
                        });
                      },
                      padding: EdgeInsets.all(2),
                      child: Stack(children: <Widget>[
                        Container(
                          child: Image(
                            image: AssetImage('images/3.png'),
                          ),
                        ),
                        Container(
                          child: Image.asset('images/cross$click7.png'),
                        ),
                      ]),
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          if (s == 0) {
                            if (click8 == 100) {
                              click += 2;
                              click8 = click % 2;
                              s = CheckGameStatus(
                                  click,
                                  click1,
                                  click2,
                                  click3,
                                  click4,
                                  click5,
                                  click6,
                                  click7,
                                  click8,
                                  click9);
                              int g = ComputersMove(
                                  click,
                                  click1,
                                  click2,
                                  click3,
                                  click4,
                                  click5,
                                  click6,
                                  click7,
                                  click8,
                                  click9);
                              var a = 1;
                              if (a == 1) {
                                if (g == 1 && click1 == 100) {
                                  click1 = 0;
                                }
                                if (g == 2 && click2 == 100) {
                                  click2 = 0;
                                }
                                if (g == 3 && click3 == 100) {
                                  click3 = 0;
                                }
                                if (g == 4 && click4 == 100) {
                                  click4 = 0;
                                }
                                if (g == 5 && click5 == 100) {
                                  click5 = 0;
                                }
                                if (g == 6 && click6 == 100) {
                                  click6 = 0;
                                }
                                if (g == 7 && click7 == 100) {
                                  click7 = 0;
                                }
                                if (g == 8 && click8 == 100) {
                                  click8 = 0;
                                }
                                if (g == 9 && click9 == 100) {
                                  click9 = 0;
                                }
                              }
                              s = CheckGameStatus(
                                  click,
                                  click1,
                                  click2,
                                  click3,
                                  click4,
                                  click5,
                                  click6,
                                  click7,
                                  click8,
                                  click9);
                            }
                          }
                        });
                      },
                      padding: EdgeInsets.all(2),
                      child: Stack(children: <Widget>[
                        Container(
                          child: Image(
                            image: AssetImage('images/4.png'),
                          ),
                        ),
                        Container(
                          child: Image.asset('images/cross$click8.png'),
                        ),
                      ]),
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          if (s == 0) {
                            if (click9 == 100) {
                              click += 2;
                              click9 = click % 2;
                              s = CheckGameStatus(
                                  click,
                                  click1,
                                  click2,
                                  click3,
                                  click4,
                                  click5,
                                  click6,
                                  click7,
                                  click8,
                                  click9);
                              int g = ComputersMove(
                                  click,
                                  click1,
                                  click2,
                                  click3,
                                  click4,
                                  click5,
                                  click6,
                                  click7,
                                  click8,
                                  click9);
                              var a = 1;
                              if (a == 1) {
                                if (g == 1 && click1 == 100) {
                                  click1 = 0;
                                }
                                if (g == 2 && click2 == 100) {
                                  click2 = 0;
                                }
                                if (g == 3 && click3 == 100) {
                                  click3 = 0;
                                }
                                if (g == 4 && click4 == 100) {
                                  click4 = 0;
                                }
                                if (g == 5 && click5 == 100) {
                                  click5 = 0;
                                }
                                if (g == 6 && click6 == 100) {
                                  click6 = 0;
                                }
                                if (g == 7 && click7 == 100) {
                                  click7 = 0;
                                }
                                if (g == 8 && click8 == 100) {
                                  click8 = 0;
                                }
                                if (g == 9 && click9 == 100) {
                                  click9 = 0;
                                }
                              }
                              s = CheckGameStatus(
                                  click,
                                  click1,
                                  click2,
                                  click3,
                                  click4,
                                  click5,
                                  click6,
                                  click7,
                                  click8,
                                  click9);
                            }
                          }
                        });
                      },
                      padding: EdgeInsets.all(2),
                      child: Stack(children: <Widget>[
                        Container(
                          child: Image(
                            image: AssetImage('images/3.png'),
                          ),
                        ),
                        Container(
                          child: Image.asset('images/cross$click9.png'),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
                    MaterialPageRoute(builder: (context) => SinglePlayer()),
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
