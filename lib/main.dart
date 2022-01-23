import 'package:flutter/material.dart';
import 'package:weatherapp/GuncelHavaDurumu.dart';
import 'package:weatherapp/api_services.dart';
import 'package:weatherapp/model.dart';

import 'Bilgiler.dart';

void main() {
  runApp(MyApp());
}



///arama butonnu ekle ordan verileri çek bilgilendirmeler kısmına veri ekle bol bol



class MyApp extends StatefulWidget {
  // This widget is the root of your application.


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  WeatherApiClient client = WeatherApiClient();
  Hava? data;

  String? get location => null;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   client.getCurrentWeather("London");
  // }

  Future<void> getData() async{
   data = await client.getCurrentWeather(locatian.text.toString());
  }

  final locatian = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Hava Durumu",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.teal,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot){
            if(snapshot.connectionState==ConnectionState.done){
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: TextField(
                      controller: locatian,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Sehir Giriniz",
                        prefixIcon: Icon(Icons.search),
                      ),onChanged: (locatian){

                    },
                    ),
                  ),
                  Text(locatian.text.toString()),
                  GuncelVeri(Icons.wb_sunny_rounded, "${data?.derece}", "${data?.sehir}"),
                  bilgiler("${data?.humidity}","${data?.feels_like}", "${data?.pressure}"),],
              );

            }
            else if(snapshot.connectionState == ConnectionState.waiting){
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return Container();
          },
        )
      ),
    );
  }
}
