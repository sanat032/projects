
import 'package:flutter/material.dart';
import 'package:tut/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        routes: {
          "/": (context) => LoginPage(),
        }
        // Material
        );
  } // MaterialApp
}
//3rd edit
import 'package:flutter/material.dart';
import 'package:tut/pages/home_page.dart';
import 'package:tut/pages/login_page.dart';
import 'package:tut/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
        }
        // Material
        );
  } // MaterialApp
}

