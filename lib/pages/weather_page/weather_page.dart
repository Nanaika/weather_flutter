import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/data/weather_service.dart';

import '../../components/custom_app_bar.dart';
import '../../components/error_view.dart';
import '../../components/weather_view.dart';
import '../../domain/models/weather.dart';
import '../../utils/weather_state.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  WeatherState _weatherState = WeatherLoading();

  final _weatherService =
      WeatherService(apiKey: '155458dfa0f2c1f431ab22736e3d3ec8');
  late Weather _weather;
  late Coordinates coordinates;

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  void _fetchWeather() async {
    setState(() {
      _weatherState = WeatherLoading();
    });
    try {
      coordinates = await _weatherService.getCurrentCoordinates();
    } catch (e) {
      setState(() {
        _weatherState = WeatherError(e.toString());
      });
      return;
    }

    try {
      final weather = await _weatherService.getWeather(
          coordinates.lat.toString(), coordinates.lon.toString());
      setState(() {
        _weatherState = WeatherSuccess();
        _weather = weather;
      });
    } catch (e) {
      setState(() {
        _weatherState = WeatherError(e.toString());
        return;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Center(
          child: switch (_weatherState) {
            WeatherLoading() => Center(
                child: Lottie.asset('assets/loading.json'),
              ),
            WeatherSuccess() => WeatherView(weather: _weather, city:  coordinates.name),
            WeatherError() => ErrorView(
                message: (_weatherState as WeatherError).errorMessage,
                onTap: _fetchWeather),
          },
        ),
      ),
    );
  }
}




