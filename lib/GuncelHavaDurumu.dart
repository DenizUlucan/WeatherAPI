import 'package:flutter/material.dart';
import 'package:weatherapp/Bilgiler.dart';


Widget GuncelVeri(IconData icon,String temp,String locatian){
  return Center(
    child: Column(
      children: [
        SizedBox(height: 20,),
        Icon(icon,
        color: Colors.amber,size: 90),
        Text("$temp Derece", style: TextStyle(fontSize: 23,height: 3,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.7)),),
        Text("$locatian",style: TextStyle(fontSize: 30,height: 2),),
        Divider(thickness: 2),
      ],
    ),
  );

  
}

