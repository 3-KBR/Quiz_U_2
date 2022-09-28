import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:quiz_u/token.dart';
import 'package:quiz_u/functions.dart';




class Name_page extends StatefulWidget {
  @override
  _Name_page createState() => _Name_page();
}



class _Name_page extends State<Name_page> {

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,

      body: Center(child: ListView(children: [


        SizedBox(height: 50,),
        Lottie.asset('Lottie_Icons/clock.json'),




        Text('Enter Your Name' ,style: TextStyle(fontSize: 22,fontFamily: 'IBM Plex Mono'),),

        SizedBox(height: 30,),

        TextField(
          controller: myController,
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Name',
          ),
        ),

        SizedBox(height: 50,),





        Container(child: ElevatedButton(onPressed: () async{
          await Methods().myInfo();
          await Token().addNewUserName(myController.text.toString());
          Navigator.pushNamed(context, '/0');
        }, child: Text('Done',style: TextStyle(fontSize: 20,fontFamily: 'FredokaONe'))),
        )

      ],),),






    );



  }

}