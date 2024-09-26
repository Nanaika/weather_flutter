import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/components/dark_mode_button.dart';
import 'package:weather/components/temp_section.dart';

import '../domain/models/weather.dart';
import '../utils/weather_animation.dart';
import 'location_section.dart';

class LandscapeWeatherView extends StatelessWidget {
  const LandscapeWeatherView({
    super.key,
    required this.weather,
    required this.city,
  });

  final Weather weather;
  final String city;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LocationSection(
                    city: city,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(
                    getWeatherAnimation(weather.weather[0].icon),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TempSection(
                    weather: weather,
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          children: [
            DarkModeButton(),
          ],
        ),
      ],
    );
  }
}
