
import 'package:flutter/material.dart';
import 'package:tut/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/undraw_secure_login_pdn4.png",
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Welcome $name",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Username",
                            labelText: "Username",
                          ),
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return "Username cannot be empty";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Enter Passward",
                              labelText: "Password",
                            ),
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return "Password cannot be empty";
                              } else if (value!.length < 6) {
                                return "Password length should be at least 6";
                              }
                              return null;
                            }),
                        SizedBox(
                          height: 40.0,
                        ),
                        InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changebutton ? 50 : 150,
                            height: 40,
                            alignment: Alignment.center,
                            child: changebutton
                                ? Icon(Icons.done, color: Colors.white)
                                : Text(
                                    "login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius:
                                  BorderRadius.circular(changebutton ? 50 : 8),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ))));
  }
}
