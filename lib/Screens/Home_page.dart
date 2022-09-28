import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';



class Home_page extends StatefulWidget {
  @override
  _Home_page createState() => _Home_page();
}



class _Home_page extends State<Home_page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Quiz U',style: TextStyle(fontSize: 40 , fontFamily: 'FredokaOne',color: Colors.black),),centerTitle: true,backgroundColor: Colors.white,),


      body: Center(child: Column(children: [


        SizedBox(height: 60,),
        Lottie.asset('Lottie_Icons/clock.json'),

        Text('Ready For The Quiz?' ,style: TextStyle(fontSize: 30,fontFamily: 'IBM Plex Mono'),),

        SizedBox(height: 70,),





        Container(
          width: 160,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black38,
          ),

          child: GestureDetector(
            child: Center(child: Text("Quiz Me" , style: TextStyle(fontSize: 25 ,fontFamily: 'FredokaONe', color: Colors.white))),
            onTap: (){Navigator.pushNamed(context, '/Quiz');},
          ),
        )

      ],),),



      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: 'LeaderBoard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),],
        onTap: (index){Navigator.pushNamed(context,"/$index");},
        selectedItemColor: Colors.blueGrey,
      ),



    );



  }

}