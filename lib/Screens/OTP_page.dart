import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:quiz_u/functions.dart';
import 'package:quiz_u/token.dart';


class OTP_page extends StatefulWidget {
  @override
  _OTP_page createState() => _OTP_page();
}




class _OTP_page extends State<OTP_page> {

  String myPin = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,

      body: Center(child: ListView(children: [

        SizedBox(height: 50,),
        Lottie.asset('Lottie_Icons/clock.json'),



        Text('Enter Your OTP' ,style: TextStyle(fontSize: 22,fontFamily: 'IBM Plex Mono'),),
        SizedBox(height: 30,),




        OTPTextField(
          length: 4,
          width: MediaQuery.of(context).size.width,
          fieldWidth: 80,
          style: TextStyle(
              fontSize: 30
          ),
          textFieldAlignment: MainAxisAlignment.spaceAround,
          fieldStyle: FieldStyle.box,
          onCompleted: (pin) { myPin = pin.toString();},
        ),

        SizedBox(height: 30,),

        Container(child: ElevatedButton(onPressed: () async{

          if(myPin == '0000'){
            await Token().getUserToken(Methods.myNumber);
            if(await Token().tokenCheck()){
              await Methods().lbList();
              await Methods().qaLists();
            }

            if(await Methods().hasName()){
              await Methods().myInfo();
              Navigator.pushNamed(context, '/0');
            }
            else{
              Navigator.pushNamed(context, '/Name');
            }

          }
          else{
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  // Retrieve the text the that user has entered by using the
                  // TextEditingController.
                  content: Text('Wrong OTP'),
                );
              },
            );
          }




        }, child: Text('Check',style: TextStyle(fontSize: 20,fontFamily: 'FredokaONe'))),
        )

      ],),),






    );



  }

}