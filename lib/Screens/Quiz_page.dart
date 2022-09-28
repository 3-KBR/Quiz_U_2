import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:quiz_u/CardCreater.dart';
import 'package:quiz_u/functions.dart';



class Quiz_page extends StatefulWidget {
  @override
  _Quiz_page createState() => _Quiz_page();
}



class _Quiz_page extends State<Quiz_page> {

  static int i = 0;
  int skipCounter = 0;
  int numOfQuestion = Methods.questionlist.length;
  Color buttonColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,

      body: Center(child: Column(children: [


        SizedBox(height: 80,),
        CircularCountDownTimer(width: 150, height: 150, duration: 120,textStyle:TextStyle(fontSize: 40,fontFamily: 'FredokaONe'),onComplete: (){Methods.myScores.add(DateTime.now().year.toString()+'/'+DateTime.now().month.toString()+'/'+DateTime.now().day.toString()+' '+DateTime.now().hour.toString()+':'+DateTime.now().minute.toString());Methods.myScores.add(i.toString());i=0;Navigator.pushNamed(context, '/pass');}, fillColor: Colors.redAccent, ringColor: Colors.blueAccent),
        SizedBox(height: 50,),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(Methods.questionlist[i] ,style: TextStyle(fontSize: 25,fontFamily: 'IBM Plex Mono'),),
        ),

          SizedBox(height: 40,),

          CardCreater(Answer: Methods.choicelist[i*4],method: (){

            if(Methods().correctAnswer('a', i)){
              if(Methods().finished(i)){
                Methods.myScores.add(DateTime.now().year.toString()+'/'+DateTime.now().month.toString()+'/'+DateTime.now().day.toString()+' '+DateTime.now().hour.toString()+':'+DateTime.now().minute.toString());
                Methods.myScores.add(i+1);
                i = 0 ;
                Navigator.pushNamed(context, '/pass');
              }
              else{
                setState(()  {
                  i ++;
                });
              }
            }
            else{
              i = 0 ;
              Navigator.pushNamed(context, '/fail');
            }

          },),
          CardCreater(Answer: Methods.choicelist[(i*4)+1], method: (){

            if(Methods().correctAnswer('b', i)){
              if(Methods().finished(i)){
                Methods.myScores.add(DateTime.now().year.toString()+'/'+DateTime.now().month.toString()+'/'+DateTime.now().day.toString()+' '+DateTime.now().hour.toString()+':'+DateTime.now().minute.toString());
                Methods.myScores.add(i+1);
                i = 0 ;
                Navigator.pushNamed(context, '/pass');
              }
              else{
                setState(()  {
                  i ++;
                });
              }
            }
            else{
              i = 0 ;
              Navigator.pushNamed(context, '/fail');
            }

          },),
          CardCreater(Answer: Methods.choicelist[(i*4)+2],method: (){

            if(Methods().correctAnswer('c', i)){
              if(Methods().finished(i)){
                Methods.myScores.add(DateTime.now().year.toString()+'/'+DateTime.now().month.toString()+'/'+DateTime.now().day.toString()+' '+DateTime.now().hour.toString()+':'+DateTime.now().minute.toString());
                Methods.myScores.add(i+1);
                i = 0 ;
                Navigator.pushNamed(context, '/pass');
              }
              else{
                setState(()  {
                  i ++;
                });
              }
            }
            else{
              i = 0 ;
              Navigator.pushNamed(context, '/fail');
            }

          },),
          CardCreater(Answer: Methods.choicelist[(i*4)+3], method: (){

            if(Methods().correctAnswer('d', i)){
              if(Methods().finished(i)){
                Methods.myScores.add(DateTime.now().year.toString()+'/'+DateTime.now().month.toString()+'/'+DateTime.now().day.toString()+' '+DateTime.now().hour.toString()+':'+DateTime.now().minute.toString());
                Methods.myScores.add(i+1);
                i = 0 ;
                Navigator.pushNamed(context, '/pass');
              }
              else{
                setState(()  {
                  i ++;
                });
              }
            }
            else{
              i = 0 ;
              Navigator.pushNamed(context, '/fail');
            }

          },),



        Container(
          width: 120,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: buttonColor,
          ),
          child: GestureDetector(
            child: Center(child: Text("Skip" , style: TextStyle(fontSize: 25 ,fontFamily: 'FredokaONe', color: Colors.white))),
            onTap: (){
              if(skipCounter <= 0){
                setState(()  {
                  i ++;
                  skipCounter++;
                  buttonColor = Colors.blueGrey;
                });}},
          ),
        ),





      ],),),



    );



  }

}