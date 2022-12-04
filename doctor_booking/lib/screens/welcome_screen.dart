import 'dart:ffi';

import 'package:doctor_booking/colors.dart';
import 'package:doctor_booking/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              pColor.withOpacity(0.8),
              pColor
            ],
            begin: Alignment.topCenter,
            end : Alignment.bottomCenter,

          ),),
          child : Column (
            children: [
              SizedBox(height: 25,),
              Padding(
                padding: EdgeInsets.all(20),
                child:
                SizedBox(height: 250,width: 250,child: Image.asset("images/g5.png")),
              ),
              SizedBox(height: 30,),
              Text(
                "Doctors Online",
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2,

                  ),
                
                ),
                SizedBox(height: 10,),
                Text(
                  "Appoint Your Doctor",
                  style: TextStyle(
                    color: wColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 60,),
                Material(
                  color: wColor,
                  borderRadius:BorderRadius.circular(10) ,
                  child: InkWell(
                    onTap:(){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                    },
                    child:Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text("Let's Go!", style: TextStyle(
                        color:pColor,
                         fontSize: 22,
                         fontWeight: FontWeight.bold,
                      ),),
                    ) ,
                  ),
                )

            ],
          ),
        )
    );
  }
}