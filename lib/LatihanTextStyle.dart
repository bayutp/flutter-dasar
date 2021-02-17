import 'package:flutter/material.dart';

class LatihanTextStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(title: Text("Latihan Text Style"),),
      body: Center(
        child: Text("Hello World", style: TextStyle(fontFamily: "Montserrat", fontSize: 24, fontWeight: FontWeight.w700), ),
      ),
    ),
    );
  }
}