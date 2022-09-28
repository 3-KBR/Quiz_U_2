import 'package:flutter/material.dart';


// main cards creater
class CardCreater extends StatelessWidget {
  CardCreater({required this.Answer , required this.method});

  final  String Answer;
  final VoidCallback method;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(


      child: Center(child: GestureDetector(child: Text(Answer,style: TextStyle(fontSize: 25,fontFamily: 'IBM Plex Mono'),),onTap: method,),),
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueAccent,
      ),


    ));
  }
}


class LeaderBoardCard extends StatelessWidget {
  LeaderBoardCard({required this.name , required this.score});

  final  String name;
  final  String score;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(children: [
        Text("Name: ",style: TextStyle(fontSize: 20 , fontFamily: 'FredokaOne',color: Colors.purple),),
        Text(name,style: TextStyle(fontSize: 18 , fontFamily: 'FredokaOne',color: Colors.pinkAccent),),
        Text(" "+ "Score: ",style: TextStyle(fontSize: 20 , fontFamily: 'FredokaOne',color: Colors.purple),),
        Text(score,style: TextStyle(fontSize: 18 , fontFamily: 'FredokaOne',color: Colors.pinkAccent),),
      ],),
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black12,
      ),
    );
  }
}