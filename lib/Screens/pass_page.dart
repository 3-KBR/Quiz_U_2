import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_u/functions.dart';



class pass_page extends StatefulWidget {
  @override
  _pass_page createState() => _pass_page();
}



class _pass_page extends State<pass_page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,

      body: Center(child: Column(children: [


        SizedBox(height: 60,),
        Lottie.asset('Lottie_Icons/pass3.json',width: double.infinity,repeat: false,frameRate: FrameRate(60)),
        SizedBox(height: 40,),
        Text('You Have Passed' ,style: TextStyle(fontSize: 30,fontFamily: 'FredokaONe',color: Colors.green),),
        Text(Methods.myScores[Methods.myScores.length-1].toString() ,style: TextStyle(fontSize: 55,fontFamily: 'FredokaONe',color: Colors.green),),
        Text('Correct Question' ,style: TextStyle(fontSize: 25,fontFamily: 'FredokaONe',color: Colors.green),),
        SizedBox(height: 50,),





        Row(children: [



          SizedBox(width: 10),

          Expanded(child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green,
            ),

            child: GestureDetector(
              child: Center(child: Text("Home" , style: TextStyle(fontSize: 25 ,fontFamily: 'FredokaONe', color: Colors.white))),
              onTap: (){Navigator.pushNamed(context, '/0');},
            ),
          )

          ),

          Expanded(child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green,
            ),
            child: GestureDetector(
              child: Center(child: Text("Share" , style: TextStyle(fontSize: 25 ,fontFamily: 'FredokaONe', color: Colors.white))),
              onTap: (){},
            ),
          )


          )
        ],),

      ],),),


    );



  }

}