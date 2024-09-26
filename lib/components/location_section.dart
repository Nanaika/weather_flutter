import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LocationSection extends StatelessWidget {
  const LocationSection({
    super.key, required this.city,
  });

  final String city;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Icon(
              CupertinoIcons.location_solid,
              size: 20,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          Text(
            city.toUpperCase(),
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                letterSpacing: 0,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}