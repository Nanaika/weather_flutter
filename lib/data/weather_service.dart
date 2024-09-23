
import 'dart:convert';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

import '../domain/models/weather.dart';

class WeatherService {

  static const BASE_URL = 'https://api.openweathermap.org/data/2.5/weather';
  final String apiKey;

  WeatherService({required this.apiKey});

  Future<Weather> getWeather(String lat, String lon) async {
    final http.Response response;
    try {
      response = await http.get(Uri.parse('$BASE_URL?lat=$lat&lon=$lon&appid=$apiKey&units=metric'));
    } catch(e) {
      return Future.error('no internet connection');
    }
    if(response.statusCode == 200) {
      return Weather.fromJson(jsonDecode(response.body),);
    } else {
      return Future.error(response.body);
    }
  }

  Future<Coordinates> getCurrentCoordinates() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    if(permission == LocationPermission.deniedForever) {
      return Future.error('Permission denied forever');
    }

    Position position = await  Geolocator.getCurrentPosition();
    List<Placemark> placeMarks = await placemarkFromCoordinates(position.latitude, position.longitude);
    return Coordinates(lat: position.latitude, lon: position.longitude, name: placeMarks[0].locality ?? "");
  }
}

class Coordinates {
  final double lat;
  final double lon;
  final String name;

  Coordinates({required this.lat, required this.lon, required this.name});

}


