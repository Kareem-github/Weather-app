import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  String baseUrl =
      'https://weather.visualcrossing.com/VisualCrossingWebServices';

 Future<weatherModel> getWeather({required String CityName}) async {
    var now = new DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(now);
    Uri url = Uri.parse(
        '$baseUrl/rest/services/timeline/Cairo/$formattedDate/$formattedDate?unitGroup=metric&include=days&key=W24P3MBFREDNGH76RQMZEXQMQ&contentType=json');
    http.Response respone = await http.get(url);
    //print(respone.body);

    Map<String, dynamic> data = jsonDecode(respone.body);
    Map<String, dynamic> neededData = data['days'][0];
    weatherModel weatherdata = weatherModel.fromJson(neededData);
     return weatherdata;
  }
}
