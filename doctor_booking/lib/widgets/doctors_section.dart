import 'package:doctor_booking/colors.dart';
import 'package:doctor_booking/screens/appoint_screen.dart';
import 'package:flutter/material.dart';

class DoctorsSection extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 340,
      child : ListView.builder(
        shrinkWrap:true,
        scrollDirection: Axis.horizontal,
        itemCount:4,
        itemBuilder: (context, index){
          return Column(
            children: [
              Container(
                height: 300,
                width: 200,
                margin: EdgeInsets.symmetric(horizontal:15, vertical:20),
                decoration: BoxDecoration(
                  color: Color(0xffF2F8FF),
                  borderRadius:BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color:sColor,
                      blurRadius: 4,
                      spreadRadius: 2,

                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(
                              builder: (context) => AppointScreen(),
                            ),);
                          },
                          child: ClipRRect(
                            borderRadius:BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            child: Image.asset(
                              "images/d${index+1}.jfif", 
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                              ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.all(8) ,
                            height: 45,
                            width: 45,
                            decoration:BoxDecoration(
                              color:Color(0xffF2F8FF),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: sColor,
                                  blurRadius:4,
                                  spreadRadius: 2,
                                )
                              ]
                            ),
                            child: Center(
                              child:Icon(
                                Icons.favorite_outline,
                                color:pColor ,
                                size:28,
                                ) ,),
                          ),

                        ),
                      ],
                    ),
                    SizedBox(height: 13,),
                    Padding(padding:EdgeInsets.symmetric(horizontal:5,),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start ,
                      children: [
                        Text(
                          "Dr. Looney",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: pColor,
                          ),
                        ),
                        Text(
                          "Surgeon",
                          style: TextStyle(
                            fontSize: 18,
                            color: bColor.withOpacity(0.6),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color:Colors.amber,
                              ),
                              SizedBox(width: 5,),
                              Text("4.9", 
                              style:TextStyle(
                                fontSize: 16,
                                color:bColor.withOpacity(0.6),
                              ),),
                          ],
                        ),


                      ],
                    ), 
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
      );
  }
}