import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../domain/models/weather.dart';

class TempSection extends StatelessWidget {
  const TempSection({
    super.key, required this.weather,
  });

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              '${weather.main.temp.round()}\u02DA',
              style: TextStyle(fontSize: 60, color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w600),
            ),
          ),
          Text(
            weather.weather[0].main,
            style: TextStyle(
                color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.w400, fontSize: 16),
          ),
        ],
      ),
    );
  }
}