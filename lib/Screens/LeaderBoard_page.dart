import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_u/Screens/Quiz_page.dart';
import 'package:quiz_u/functions.dart';
import 'package:quiz_u/token.dart';
import 'package:quiz_u/CardCreater.dart';



class LeaderBoard_page extends StatefulWidget {
  @override
  _LeaderBoard_page createState() => _LeaderBoard_page();
}



class _LeaderBoard_page extends State<LeaderBoard_page> {

  List leaderBoardList = Methods.leaderBoardInfo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,

      appBar: AppBar(title: Text('Quiz U',style: TextStyle(fontSize: 40 , fontFamily: 'FredokaOne',color: Colors.black),),centerTitle: true,backgroundColor: Colors.white,),

      body: Center(child: ListView(children: [

        SizedBox(height: 20,),

        Text('  Leader Board:',style: TextStyle(fontSize: 30 , fontFamily: 'FredokaOne',color: Colors.purple),),

        SizedBox(height: 20,),

        LeaderBoardCard(name: leaderBoardList[0], score: leaderBoardList[1]),
        LeaderBoardCard(name: leaderBoardList[2], score: leaderBoardList[3]),
        LeaderBoardCard(name: leaderBoardList[4], score: leaderBoardList[5]),
        LeaderBoardCard(name: leaderBoardList[6], score: leaderBoardList[7]),
        LeaderBoardCard(name: leaderBoardList[8], score: leaderBoardList[9]),
        LeaderBoardCard(name: leaderBoardList[10], score: leaderBoardList[11]),
        LeaderBoardCard(name: leaderBoardList[12], score: leaderBoardList[13]),
        LeaderBoardCard(name: leaderBoardList[14], score: leaderBoardList[15]),
        LeaderBoardCard(name: leaderBoardList[16], score: leaderBoardList[17]),
        LeaderBoardCard(name: leaderBoardList[18], score: leaderBoardList[19]),


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