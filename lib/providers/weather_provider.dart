import 'package:flutter/cupertino.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
  weatherModel? _weatherData;
  
  set weatherData(weatherModel? weather)
  {
    _weatherData=weather;
    notifyListeners();
  }

 weatherModel? get weatherData => _weatherData;
}
