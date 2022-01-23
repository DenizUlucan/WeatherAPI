import 'package:flutter/material.dart';

Widget bilgiler(String humidity,String feels_like,String pressure){

  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(11.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Nem: $humidity",style: TextStyle(fontSize: 18),),
            Text("Basınç: $pressure",style: TextStyle(fontSize: 18),)
          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Hissedilen: $feels_like",style: TextStyle(fontSize: 18),),
          //Text("Hava Tarifi: $description",style: TextStyle(fontSize: 18),)
        ],
      )
    ],
  );
}