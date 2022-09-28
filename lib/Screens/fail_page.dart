import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_u/Screens/Quiz_page.dart';



class fail_page extends StatefulWidget {
  @override
  _fail_page createState() => _fail_page();
}



class _fail_page extends State<fail_page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,

      body: Center(child: Column(children: [


        SizedBox(height: 60,),
        Lottie.asset('Lottie_Icons/fail2.json',width: double.infinity,repeat: false,frameRate: FrameRate(60)),
        SizedBox(height: 20,),
        Text('You Have Failed :(' ,style: TextStyle(fontSize: 30,fontFamily: 'FredokaONe',color: Colors.redAccent),),
        SizedBox(height: 10,),
        Text('Your Score Will Not Be Saved' ,style: TextStyle(fontSize: 25,fontFamily: 'FredokaONe',color: Colors.redAccent),),
        SizedBox(height: 80,),





        Row(children: [



          SizedBox(width: 10),

          Expanded(child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.redAccent,
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
              color: Colors.redAccent,
            ),
            child: GestureDetector(
              child: Center(child: Text("Re Try" , style: TextStyle(fontSize: 25 ,fontFamily: 'FredokaONe', color: Colors.white))),
              onTap: (){Navigator.pushNamed(context, '/Quiz');},
            ),
          )


          )
        ],)

      ],),),




    );



  }

}