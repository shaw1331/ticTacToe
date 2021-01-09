import 'package:flutter/material.dart';
import 'mainscreen.dart';
import 'colors.dart';

class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(colButtons),
        title: Text("Statistics"),
      ),
      backgroundColor: Color(colBg),
    );
  }
}
