import 'dart:convert';
import 'package:http/http.dart' as http;

class Token{


  static String myToken = '';

  Token();

// Return User unique token
  Future<String> getUserToken(String mobile) async{
    var url = Uri.parse('https://quizu.okoul.com/Login');
    http.Response response = await http.post(url,body: {"OTP":"0000","mobile": mobile});
    String token = (jsonDecode(response.body)['token']);
    myToken = token;
    return token;
  }



//Check if the token is provided
  Future<bool> tokenCheck() async{
    var url = Uri.parse('https://quizu.okoul.com/Token');
    http.Response response = await http.get(url,headers: {'Authorization':'Bearer $myToken'}) ;
    bool isProvided = (jsonDecode(response.body)['success']);
    return isProvided;
  }


//Add the new user name to the server
  Future<void> addNewUserName(String name) async{
    var url = Uri.parse('https://quizu.okoul.com/Name');
    await http.post(url,headers: {'Authorization':'Bearer $myToken'} ,body: {"name":name});
  }


//Return User Info
  Future getUserInfo() async{
    var url = Uri.parse('https://quizu.okoul.com/UserInfo');
    http.Response response = await http.get(url,headers: {'Authorization':'Bearer $myToken'}) ;
    var info = (jsonDecode(response.body));
    return info;
  }



//Add User's Score
  void addTheUserScore(String score) async{
    var url = Uri.parse('https://quizu.okoul.com/Score');
    await http.post(url,headers: {'Authorization':'Bearer $myToken'} ,body: {"score":score});
  }



//Return Top 10 scores
  Future getTopScore() async{
    var url = Uri.parse('https://quizu.okoul.com/TopScores');
    http.Response response = await http.get(url,headers: {'Authorization':'Bearer $myToken'}) ;
    var topTen = (jsonDecode(response.body));
    return topTen;
  }


//Return The Question List
  Future getQuestions() async{
    var url = Uri.parse('https://quizu.okoul.com/Questions');
    http.Response response = await http.get(url,headers: {'Authorization':'Bearer $myToken'}) ;
    var questionsList = (jsonDecode(response.body));
    return questionsList;
  }

}

