import 'package:phone_number/phone_number.dart';
import 'package:quiz_u/token.dart';
import 'dart:async';

class Methods{

  Methods();

  static List questionlist = [];
  static List choicelist = [];
  static List answerlist = [];
  static List myScores = ['No Date','No Score','No Date','No Score','No Date','No Score'];
  static List leaderBoardInfo = [];
  static List myInfolist = [];
  static String myNumber = '';



  //Return 3 Lists Question,Choices and answers
  Future<void> qaLists() async{

    var list= await Token().getQuestions();
    for(int i = 0 ; i < list.length ; i++){
      questionlist.add(list[i]['Question']);
      choicelist.add(list[i]['a']);
      choicelist.add(list[i]['b']);
      choicelist.add(list[i]['c']);
      choicelist.add(list[i]['d']);
      answerlist.add(list[i]['correct']);


    }
  }


  //Return Leader Board information
  Future<void> lbList() async{
    var list= await Token().getTopScore();
    for(int i = 0 ; i < list.length ; i++){

      leaderBoardInfo.add(list[i]['name']);
      leaderBoardInfo.add(list[i]['score'].toString());

    }
  }


  Future<bool> hasName() async{
    var info = await Token().getUserInfo();
    return info['name'] != null;
  }


  bool correctAnswer(String answer,int index){
    if(answer == answerlist[index]){
      return true;
    }
    else{
      return false;
    }
  }


  bool finished(int index){
    if(index == questionlist.length-1){
      return true;
    }
    else{
      return false;
    }
  }


  Future<void> myInfo() async{
    var info = await Token().getUserInfo();
    myInfolist.add(info['name']);
    myInfolist.add(info['mobile']);

  }



  Future<bool> phoneChecked(String phone) async{


    //Get phone number region
    try {
      PhoneNumber phoneNumber = await PhoneNumberUtil().parse('+'+phone);
      return true;
    } catch(e) {
      return false;
    }


  }














}

