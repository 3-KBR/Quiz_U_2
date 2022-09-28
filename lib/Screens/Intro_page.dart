import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';




class Intro_page extends StatefulWidget {
  @override
  _Intro_page createState() => _Intro_page();
}


class _Intro_page extends State<Intro_page> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamed(context, '/Login');
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      body: Column(children: [
        SizedBox(height: 150,),
        Lottie.asset('Lottie_Icons/clock.json',width: double.infinity,),
        Text('Quiz U',style: TextStyle(fontSize: 55 , fontFamily: 'FredokaOne'),),


      ],)




    );

  }
}
