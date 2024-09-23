class Weather2 {
  late final String city;
  late final double temp;
  late final String mainCondition;

  Weather2(
      {required this.city, required this.temp, required this.mainCondition});

  // factory Weather.fromJson(Map<String, dynamic> json) {
  //   return Weather(
  //     city: json['name'],
  //     temp: json['main']['temp'],
  //     mainCondition: json['weather'][0]['main'],
  //   );
  // }
  Weather2.fromJson(Map<String, dynamic> json) {
    city = json['name'];
    temp = json['main']['temp'];
    mainCondition = json['weather'][0]['main'];
  }
}
