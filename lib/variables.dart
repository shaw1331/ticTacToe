import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tictactoe/colors.dart';

class VariablesPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<VariablesPage> {
  String _haveStarted3Times = '';
  int count = 0;
  @override
  void initState() {
    super.initState();
    _showCounter();
  }

  /// Will get the startupnumber from shared_preferences
  /// will return 0 if null
  Future<int> _getIntFromSharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    final startupNumber = prefs.getInt('startupNumber');
    if (startupNumber == null) {
      return 0;
    }
    return startupNumber;
  }

  /// Reset the counter in shared_preferences to 0
  Future<void> _resetCounter() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('startupNumber', 0);
    _showCounter();
  }

  /// Reset the counter in shared_preferences to 0
  Future<void> _showCounter() async {
    // final prefs = await SharedPreferences.getInstance();
    int lastStartupNumber = await _getIntFromSharedPref();
    setState(() => _haveStarted3Times = '$lastStartupNumber Times Completed');
  }

  /// Will Increment the startup number and store it then
  /// use setState to display in the UI
  Future<void> _incrementStartup() async {
    final prefs = await SharedPreferences.getInstance();

    int lastStartupNumber = await _getIntFromSharedPref();
    await prefs.setInt('startupNumber', lastStartupNumber++);

    await prefs.setInt('startupNumber', lastStartupNumber);

    if (lastStartupNumber == 3) {
      setState(() => _haveStarted3Times = '$lastStartupNumber Times Completed');

      // Reset only if you want to
      // await _resetCounter();
    } else {
      setState(() =>
          _haveStarted3Times = '$lastStartupNumber Times started the app');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(colButtons),
      ),
      backgroundColor: Color(colBg),
      body: Column(children: <Widget>[
        Container(
          child: Text(
            _haveStarted3Times,
            style: TextStyle(fontSize: 32),
          ),
        ),
        Container(
            child: RaisedButton(
          onPressed: () {
            _incrementStartup();
          },
          color: Color(colButtons),
        )),
        Container(
            child: RaisedButton(
          onPressed: () {
            _resetCounter();
          },
          color: Color(colButtons),
        ))
      ]),
    );
  }
}
