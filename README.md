import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("               catalog app")),
          body: Center(
            child: Container(
              child: Text("Welcome to $days days of flutter"),
            ), // Container
          ),
          drawer: Drawer(),

          // Center
        ),
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        )
        // Material
        );
  } // MaterialApp
}
  
/*home_page.dart*/
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";
  @override
  Widget build (BuildContext context) {
    return Scaffold(
        appBar: AppBar(
    title: Text("Catalog App"),
    ), // AppBar
    body: Center(
    child: Container (
    child: Text("Welcome to $days days of flutter by $name"),
    ), // Container
    ), // Center
    drawer: Drawer(),
    ); // Scaffold
    }
}

//login_page.dart
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
@override
Widget build (BuildContext context) {
return Material(
  child: Center(
    child: Text("login page"),
  )
);
}
}


  
