import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weatherapp/model.dart';

class WeatherApiClient{

  Future<Hava>? getCurrentWeather(String? location)async{
    var endpoint = Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=9b6ece44d1233c111b86cacb5e3617f1&units=metric&lang=tr"
    );
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Hava.fromJson(body).sehir);
    return Hava.fromJson(body);
}
}