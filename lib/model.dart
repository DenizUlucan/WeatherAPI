class Hava{
  String? sehir;
  double? derece;
  int? pressure;
  int? humidity;
  double? feels_like;


  Hava(
  {
    this.sehir,
    this.derece,
    this.pressure,
    this.humidity,
    this.feels_like,
}
      );
  Hava.fromJson(Map<String, dynamic> json){
    sehir = json["name"];
    derece = json["main"]["temp"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    feels_like = json["main"]["feels_like"];
  }
}