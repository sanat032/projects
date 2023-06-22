import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    int days = 30;
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text("catalog app")
        ),
        body: Center(
          child: Container(
            child: Text("Welcome to $days days of flutter"),
          ), // Container
        ),drawer: Drawer(),
        // Center
      ),
      // Material
    );
  }// MaterialApp
  }
