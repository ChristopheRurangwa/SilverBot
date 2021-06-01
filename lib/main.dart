
import 'package:flutter/material.dart';
import 'package:silverbott/screens/home.dart';
import 'package:silverbott/screens/intro.dart';
import 'package:silverbott/screens/loginPage.dart';
import 'package:silverbott/screens/signUp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '""',
      theme: ThemeData(

        primaryColor: Colors.white,

        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),//Intro(),
      routes: {
      Home.hom:(context)=>Home(),
        Intro.intro_:(context)=>Intro(),
        SignUp.signup:(context)=>SignUp(),
        LoginPage.backLogin:(context)=>LoginPage(),

      },
    );
  }
}

