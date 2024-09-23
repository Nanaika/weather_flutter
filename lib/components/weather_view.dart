import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/components/temp_section.dart';

import '../domain/models/weather.dart';
import '../utils/weather_animation.dart';
import 'location_section.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({
    super.key, required this.weather, required this.city,
  });

  final Weather weather;
  final String city;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LocationSection(
          city: city,
        ),
        Lottie.asset(
          getWeatherAnimation(weather.weather[0].icon),
        ),
        TempSection(
          weather: weather,
        ),
      ],
    );
  }
}