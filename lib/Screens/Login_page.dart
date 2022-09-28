import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_u/functions.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';




class Login_page extends StatefulWidget {
  @override
  _Login_page createState() => _Login_page();
}



class _Login_page extends State<Login_page> {

  String myNumber = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,

      body: Center(child: ListView(children: [


        SizedBox(height: 50,),
        Lottie.asset('Lottie_Icons/clock.json'),




        Text('Enter Your Mobile Number' ,style: TextStyle(fontSize: 22,fontFamily: 'IBM Plex Mono'),),

        SizedBox(height: 50,),

        OTPTextField(
          length: 12,
          width: MediaQuery.of(context).size.width,
          fieldWidth: 30,
          style: TextStyle(
              fontSize: 20
          ),
          textFieldAlignment: MainAxisAlignment.spaceAround,
          fieldStyle: FieldStyle.underline,
          onCompleted: (number) { myNumber = number.toString();},
        ),

        SizedBox(height: 50,),

        Container(child: ElevatedButton(onPressed: () async{

          if(await Methods().phoneChecked(myNumber.toString())){
            Methods.myNumber = myNumber.toString();
            Navigator.pushNamed(context, '/OTP');
          }
          else{
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  // Retrieve the text the that user has entered by using the
                  // TextEditingController.
                  content: Text('Invalid Mobile Number'),
                );
              },
            );
          }



        }, child: Text('Start',style: TextStyle(fontSize: 20,fontFamily: 'FredokaONe'))),
        )

      ],),),






    );



  }

}