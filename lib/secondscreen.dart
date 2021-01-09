import 'package:flutter/material.dart';
import 'mainscreen.dart';
import 'colors.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  var click = 0;
  var click1=2,click2=2,click3=2,click4=2,click5=2,click6=2,click7=2,click8=2,click9=2;

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(colButtons),
        title: Text("SecondScreen"),
      ),

      backgroundColor: Color.fromRGBO(41, 41, 41, 100),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget> [
          Row(
            children: <Widget> [
              Expanded(
                child: RaisedButton(
                  onPressed: (){
                    setState(() {
                      if(click1==2){
                      click+=1;
                      click1 = click%2;}
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
                      if(click2==2){
                        click+=1;
                        click2 = click%2;}
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
                      if(click3==2){
                        click+=1;
                        click3 = click%2;}

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
          Row(
            children: <Widget> [
              Expanded(
                child: RaisedButton(
                  onPressed: (){
                    setState(() {
                      if(click4==2){
                        click+=1;
                        click4 = click%2;}

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
                      if(click5==2){
                        click+=1;
                        click5 = click%2;}

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
                      if(click6==2){
                        click+=1;
                        click6 = click%2;}

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
          Row(
            children: <Widget> [
              Expanded(
                child: RaisedButton(
                  onPressed: (){
                    setState(() {
                      if(click7==2){
                        click+=1;
                        click7 = click%2;}

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
                      if(click8==2){
                        click+=1;
                        click8 = click%2;}

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
                      if(click9==2){
                        click+=1;
                        click9 = click%2;}

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
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
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
            ],
          ),


        ],
      ),

    );
  }
}





//Container(
//child: Image(
//image: AssetImage('images/cross.png'),
//),
//),
