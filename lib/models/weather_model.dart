import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class weatherModel {
  String conditions;
  double tempmax;
  double tempmin;
  double temp;
  DateTime date;
  

  weatherModel(
      {required this.conditions,
      required this.tempmax,
      required this.tempmin,
      required this.temp,
      required this.date,});

  factory weatherModel.fromJson(Map<String, dynamic> data) {
    return weatherModel(
      conditions: data['conditions'],
      tempmax: data['tempmax'],
      tempmin: data['tempmin'],
      temp: data['temp'],
      date: DateTime.now(),
    );
  }

  String getImage() {
    if (conditions == 'Partially cloudy' || conditions == 'Light Rain') {
      return 'assets/images/cloudy.png';
    } else if (conditions == 'Thunderstorm' ||
        conditions == 'Thunderstorm Without Precipitation') {
      return 'assets/images/thunderstorm.png';
    } else if (conditions == 'Light Snow' ||
        conditions == 'Heavy Snow' ||
        conditions == 'Snow Showers' ||
        conditions == 'Snow And Rain Showers' ||
        conditions == 'Snow') {
      return 'assets/images/snow.png';
    } else if (conditions == 'Heavy Rain' ||
        conditions == 'Rain Showers' ||
        conditions == 'Light Rain And Snow' ||
        conditions == 'Heavy Rain And Snow' ||
        conditions == 'Rain') {
      return 'assets/images/rainy.png';
    } else {
      return 'assets/images/clear.png';
    }
  }

MaterialColor getThemeColor() {
    if (conditions == 'Partially cloudy' || conditions == 'Light Rain') {
      return Colors.blue;
    } else if (conditions == 'Thunderstorm' ||
        conditions == 'Thunderstorm Without Precipitation') {
      return Colors.yellow;
    } else if (conditions == 'Light Snow' ||
        conditions == 'Heavy Snow' ||
        conditions == 'Snow Showers' ||
        conditions == 'Snow And Rain Showers' ||
        conditions == 'Snow') {
      return Colors.blue;
    } else if (conditions == 'Heavy Rain' ||
        conditions == 'Rain Showers' ||
        conditions == 'Light Rain And Snow' ||
        conditions == 'Heavy Rain And Snow' ||
        conditions == 'Rain') {
      return Colors.blue;
    } else {
      return Colors.orange;
    }
  }
}
