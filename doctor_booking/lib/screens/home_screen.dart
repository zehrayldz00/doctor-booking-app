import 'package:doctor_booking/colors.dart';
import 'package:doctor_booking/widgets/doctors_section.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget{
  List catNames = [
    "Dentail",
    "Heart",
    "Eye",
    "Brain",
    "Ear",
  ];

  List<Icon> catIcons = [
    Icon(MdiIcons.toothOutline, color: pColor, size: 30,),
    Icon(MdiIcons.heartPlus, color: pColor, size: 30,),
    Icon(MdiIcons.eye, color: pColor, size: 30,),
    Icon(MdiIcons.brain, color: pColor, size: 30,),
    Icon(MdiIcons.earHearing, color: pColor, size: 30,),
  ];
 
  @override
  Widget build (BuildContext context){
    return Material(
      color: Color(0xffD9E4EE),
      child: SingleChildScrollView(
        child: Stack(
          children:[
            Container(
              width: MediaQuery.of(context).size.width,
              height : MediaQuery.of(context).size.height/3.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors:
                  [pColor.withOpacity(0.8),
                  pColor,],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:50,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                  padding: EdgeInsets.symmetric(horizontal:15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      SizedBox(height: 13,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius:30, 
                            backgroundImage: 
                               AssetImage("images/d3.jfif"),
                          ),
                      
                          SizedBox(height: 15,),
                      Text(
                        "Hi, Zehra!\nYour Health is Our Priority",
                        style: TextStyle(
                    
                          color: wColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                      Icon(
                        Icons.notifications_outlined,
                        color:wColor,
                        size:30,
                      ),
                     ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top:40 , bottom:20),
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: wColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: sColor,
                            blurRadius: 20,
                            spreadRadius: 10,
                          ),
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here...",
                          hintStyle: TextStyle(
                            color:bColor.withOpacity(0.5),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            size :25,
                          )
                        ),
                      ),
                    )
                  ],
                  ),
                 ),
                 Padding(
                 padding: EdgeInsets.only(left:15),
                 child: Text( "Categories", style: TextStyle(
                 fontSize: 17,
                 fontWeight: FontWeight.w500,
                 color: bColor.withOpacity(0.4),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height:100 ,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: catNames.length,
                    itemBuilder: (context, index){
                      return Column(
                        children: [
                          Container(
                            margin:EdgeInsets.symmetric(vertical: 4, horizontal: 15) ,
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color:Color(0xffF2F8FF),
                              shape: BoxShape.circle,
                              boxShadow:[
                                BoxShadow(
                                  color: sColor,
                                  blurRadius: 4,
                                  spreadRadius:3 ,
                                )
                              ] 
                            ),
                            child: catIcons[index],
                          ),
                          SizedBox(height: 7,),
                          Text(
                            catNames[index],
                            style:TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: bColor.withOpacity(0.5),
                            ),
                          ),
                          
                        ],

                      );
                    },
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsets.only(left:15),
                  child: Text(
                    "Recommended Doctors",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: bColor.withOpacity(0.7),

                    ),
                  ),
                ),
                DoctorsSection(),

              ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}