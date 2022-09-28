import 'package:flutter/material.dart';
import 'package:quiz_u/Screens/Home_page.dart';
import 'package:quiz_u/Screens/Intro_page.dart';
import 'package:quiz_u/Screens/Quiz_page.dart';
import 'package:quiz_u/Screens/Login_page.dart';
import 'package:quiz_u/Screens/OTP_page.dart';
import 'package:quiz_u/Screens/Name_page.dart';
import 'package:quiz_u/Screens/LeaderBoard_page.dart';
import 'package:quiz_u/Screens/Profile_page.dart';
import 'package:quiz_u/Screens/pass_page.dart';
import 'package:quiz_u/Screens/fail_page.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {





  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      routes: {
        '/': (context) => Intro_page(),
        '/0': (context) => Home_page(),
        '/Quiz': (context) => Quiz_page(),
        '/Login': (context) => Login_page(),
        '/OTP': (context) => OTP_page(),
        '/Name': (context) => Name_page(),
        '/1': (context) => LeaderBoard_page(),
        '/2': (context) => Profile_page(),
        '/pass': (context) => pass_page(),
        '/fail': (context) => fail_page(),
      },

      debugShowCheckedModeBanner: false,
      initialRoute: '/',



    );
  }
}