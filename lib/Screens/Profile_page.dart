import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_u/functions.dart';



class Profile_page extends StatefulWidget {
  @override
  _Profile_page createState() => _Profile_page();
}

class _Profile_page extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(title: Text('Quiz U',style: TextStyle(fontSize: 40 , fontFamily: 'FredokaOne',color: Colors.black),),centerTitle: true,backgroundColor: Colors.white,),

      body: Center(child: Column(children: [


        SizedBox(height: 60,),
        Row(children: [
          SizedBox(width: 50,),
          Lottie.asset('Lottie_Icons/avatarGirl.json',width: 120,),
          Text(Methods.myInfolist[0].toString(),style: TextStyle(fontSize: 25 , fontFamily: 'FredokaOne'),)
        ],),

        SizedBox(height: 20,),

        Row(children: [
          SizedBox(width: 60,),
          Lottie.asset('Lottie_Icons/phone.json',width: 100,repeat: false),
          Text(Methods.myInfolist[1].toString(),style: TextStyle(fontSize: 25 , fontFamily: 'FredokaOne'),)
        ],),


        SizedBox(height: 50,),



        Text('My Last 3 Scores:\n',style: TextStyle(fontSize: 30 , fontFamily: 'FredokaOne',color: Colors.pinkAccent),),

        Text(Methods.myScores[Methods.myScores.length-2]+'   '+Methods.myScores[Methods.myScores.length-1]+'\n',style: TextStyle(fontSize: 25 , fontFamily: 'FredokaOne',color: Colors.black),),
        Text(Methods.myScores[Methods.myScores.length-4]+'   '+Methods.myScores[Methods.myScores.length-3]+'\n',style: TextStyle(fontSize: 25 , fontFamily: 'FredokaOne',color: Colors.black),),
        Text(Methods.myScores[Methods.myScores.length-6]+'   '+Methods.myScores[Methods.myScores.length-5]+'\n',style: TextStyle(fontSize: 25 , fontFamily: 'FredokaOne',color: Colors.black),),

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
        showSelectedLabels: true,
      ),
    );
  }
}