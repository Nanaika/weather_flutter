/// coord : {"lon":7.367,"lat":45.133}
/// weather : [{"id":501,"main":"Rain","description":"moderate rain","icon":"10d"}]
/// base : "stations"
/// main : {"temp":284.2,"feels_like":282.93,"temp_min":283.06,"temp_max":286.82,"pressure":1021,"humidity":60,"sea_level":1021,"grnd_level":910}
/// visibility : 10000
/// wind : {"speed":4.09,"deg":121,"gust":3.47}
/// rain : {"1h":2.73}
/// clouds : {"all":83}
/// dt : 1726660758
/// sys : {"type":1,"id":6736,"country":"IT","sunrise":1726636384,"sunset":1726680975}
/// timezone : 7200
/// id : 3165523
/// name : "Province of Turin"
/// cod : 200
library;

class Weather {
  Weather({
    required Coord coord,
    required List<WeatherInner> weather,
    required String base,
    required Main main,
    required num visibility,
    required Wind wind,
    // required Rain rain,
    required Clouds clouds,
    required num dt,
    required Sys sys,
    required num timezone,
    required num id,
    required String name,
    required num cod,
  }) {
    _coord = coord;
    _weather = weather;
    _base = base;
    _main = main;
    _visibility = visibility;
    _wind = wind;
    // _rain = rain;
    _clouds = clouds;
    _dt = dt;
    _sys = sys;
    _timezone = timezone;
    _id = id;
    _name = name;
    _cod = cod;
  }

  Weather.fromJson(dynamic json) {

    _coord = Coord.fromJson(json['coord']);

    _weather = [];
    json['weather'].forEach((v) {
      _weather.add(WeatherInner.fromJson(v));
    });

    _base = json['base'];
    _main = Main.fromJson(json['main']);
    _visibility = json['visibility'];
    _wind = Wind.fromJson(json['wind']);
    // _rain = Rain.fromJson(json['rain']);
    _clouds = Clouds.fromJson(json['clouds']);
    _dt = json['dt'];
    _sys = Sys.fromJson(json['sys']);
    _timezone = json['timezone'];
    _id = json['id'];
    _name = json['name'];
    _cod = json['cod'];
  }

  late final Coord _coord;
  late final List<WeatherInner> _weather;
  late final String _base;
  late final Main _main;
  late final num _visibility;
  late final Wind _wind;
  // late final Rain _rain;
  late final Clouds _clouds;
  late final num _dt;
  late final Sys _sys;
  late final num _timezone;
  late final num _id;
  late final String _name;
  late final num _cod;

  Weather copyWith({
    required Coord coord,
    required List<WeatherInner> weather,
    required String base,
    required Main main,
    required num visibility,
    required Wind wind,
    // required Rain rain,
    required Clouds clouds,
    required num dt,
    required Sys sys,
    required num timezone,
    required num id,
    required String name,
    required num cod,
  }) =>
      Weather(
        coord: coord,
        weather: weather,
        base: base,
        main: main,
        visibility: visibility,
        wind: wind,
        // rain: rain,
        clouds: clouds,
        dt: dt,
        sys: sys,
        timezone: timezone,
        id: id,
        name: name,
        cod: cod,
      );

  Coord get coord => _coord;

  List<WeatherInner> get weather => _weather;

  String get base => _base;

  Main get main => _main;

  num get visibility => _visibility;

  Wind get wind => _wind;

  // Rain get rain => _rain;

  Clouds get clouds => _clouds;

  num get dt => _dt;

  Sys get sys => _sys;

  num get timezone => _timezone;

  num get id => _id;

  String get name => _name;

  num get cod => _cod;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['coord'] = _coord.toJson();
    map['weather'] = _weather.map((v) => v.toJson()).toList();
    map['base'] = _base;
    map['main'] = _main.toJson();
    map['visibility'] = _visibility;
    map['wind'] = _wind.toJson();
    // map['rain'] = _rain.toJson();
    map['clouds'] = _clouds.toJson();
    map['dt'] = _dt;
    map['sys'] = _sys.toJson();
    map['timezone'] = _timezone;
    map['id'] = _id;
    map['name'] = _name;
    map['cod'] = _cod;
    return map;
  }
}

/// type : 1
/// id : 6736
/// country : "IT"
/// sunrise : 1726636384
/// sunset : 1726680975

class Sys {
  Sys({
    required num type,
    required num id,
    required String country,
    required num sunrise,
    required num sunset,
  }) {
    _type = type;
    _id = id;
    _country = country;
    _sunrise = sunrise;
    _sunset = sunset;
  }

  Sys.fromJson(dynamic json) {
    _type = json['type'];
    _id = json['id'];
    _country = json['country'];
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
  }

  late final num _type;
  late final num _id;
  late final String _country;
  late final num _sunrise;
  late final num _sunset;

  Sys copyWith({
    required num type,
    required num id,
    required String country,
    required num sunrise,
    required num sunset,
  }) =>
      Sys(
        type: type,
        id: id,
        country: country,
        sunrise: sunrise,
        sunset: sunset,
      );

  num get type => _type;

  num get id => _id;

  String get country => _country;

  num get sunrise => _sunrise;

  num get sunset => _sunset;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['id'] = _id;
    map['country'] = _country;
    map['sunrise'] = _sunrise;
    map['sunset'] = _sunset;
    return map;
  }
}

/// all : 83

class Clouds {
  Clouds({
    required num all,
  }) {
    _all = all;
  }

  Clouds.fromJson(dynamic json) {
    _all = json['all'];
  }

  late final num _all;

  Clouds copyWith({
    required num all,
  }) =>
      Clouds(
        all: all,
      );

  num get all => _all;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['all'] = _all;
    return map;
  }
}

/// 1h : 2.73

class Rain {
  Rain({
    required num h,
  }) {
    _h = h;
  }

  Rain.fromJson(dynamic json) {
    _h = json['1h'];
  }

  late final num _h;

  Rain copyWith({
    required num h,
  }) =>
      Rain(
        h: h,
      );

  num get h => _h;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['1h'] = _h;
    return map;
  }
}

/// speed : 4.09
/// deg : 121
/// gust : 3.47

class Wind {
  Wind({
    required num speed,
    required num deg,
    // required num gust,
  }) {
    _speed = speed;
    _deg = deg;
    // _gust = gust;
  }

  Wind.fromJson(dynamic json) {
    _speed = json['speed'];
    _deg = json['deg'];
    // _gust = json['gust'];
  }

  late final num _speed;
  late final num _deg;
  // late final num _gust;

  Wind copyWith({
    required num speed,
    required num deg,
    // required num gust,
  }) =>
      Wind(
        speed: speed,
        deg: deg,
        // gust: gust,
      );

  num get speed => _speed;

  num get deg => _deg;

  // num get gust => _gust;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['speed'] = _speed;
    map['deg'] = _deg;
    // map['gust'] = _gust;
    return map;
  }
}

/// temp : 284.2
/// feels_like : 282.93
/// temp_min : 283.06
/// temp_max : 286.82
/// pressure : 1021
/// humidity : 60
/// sea_level : 1021
/// grnd_level : 910

class Main {
  Main({
    required num temp,
    required num feelsLike,
    required num tempMin,
    required num tempMax,
    required num pressure,
    required num humidity,
    required num seaLevel,
    required num grndLevel,
  }) {
    _temp = temp;
    _feelsLike = feelsLike;
    _tempMin = tempMin;
    _tempMax = tempMax;
    _pressure = pressure;
    _humidity = humidity;
    _seaLevel = seaLevel;
    _grndLevel = grndLevel;
  }

  Main.fromJson(dynamic json) {
    _temp = json['temp'];
    _feelsLike = json['feels_like'];
    _tempMin = json['temp_min'];
    _tempMax = json['temp_max'];
    _pressure = json['pressure'];
    _humidity = json['humidity'];
    _seaLevel = json['sea_level'];
    _grndLevel = json['grnd_level'];
  }

  late final num _temp;
  late final num _feelsLike;
  late final num _tempMin;
  late final num _tempMax;
  late final num _pressure;
  late final num _humidity;
  late final num _seaLevel;
  late final num _grndLevel;

  Main copyWith({
    required num temp,
    required num feelsLike,
    required num tempMin,
    required num tempMax,
    required num pressure,
    required num humidity,
    required num seaLevel,
    required num grndLevel,
  }) =>
      Main(
        temp: temp,
        feelsLike: feelsLike,
        tempMin: tempMin,
        tempMax: tempMax,
        pressure: pressure,
        humidity: humidity,
        seaLevel: seaLevel,
        grndLevel: grndLevel,
      );

  num get temp => _temp;

  num get feelsLike => _feelsLike;

  num get tempMin => _tempMin;

  num get tempMax => _tempMax;

  num get pressure => _pressure;

  num get humidity => _humidity;

  num get seaLevel => _seaLevel;

  num get grndLevel => _grndLevel;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['temp'] = _temp;
    map['feels_like'] = _feelsLike;
    map['temp_min'] = _tempMin;
    map['temp_max'] = _tempMax;
    map['pressure'] = _pressure;
    map['humidity'] = _humidity;
    map['sea_level'] = _seaLevel;
    map['grnd_level'] = _grndLevel;
    return map;
  }
}

/// id : 501
/// main : "Rain"
/// description : "moderate rain"
/// icon : "10d"

class WeatherInner {
  WeatherInner({
    required num id,
    required String main,
    required String description,
    required String icon,
  }) {
    _id = id;
    _main = main;
    _description = description;
    _icon = icon;
  }

  WeatherInner.fromJson(dynamic json) {
    _id = json['id'];
    _main = json['main'];
    _description = json['description'];
    _icon = json['icon'];
  }

  late final num _id;
  late final String _main;
  late final String _description;
  late final String _icon;

  WeatherInner copyWith({
    required num id,
    required String main,
    required String description,
    required String icon,
  }) =>
      WeatherInner(
        id: id,
        main: main,
        description: description,
        icon: icon,
      );

  num get id => _id;

  String get main => _main;

  String get description => _description;

  String get icon => _icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['main'] = _main;
    map['description'] = _description;
    map['icon'] = _icon;
    return map;
  }
}

/// lon : 7.367
/// lat : 45.133

class Coord {
  Coord({
    required num lon,
    required num lat,
  }) {
    _lon = lon;
    _lat = lat;
  }

  Coord.fromJson(dynamic json) {
    _lon = json['lon'];
    _lat = json['lat'];
  }

  late final num _lon;
  late final num _lat;

  Coord copyWith({
    required num lon,
    required num lat,
  }) =>
      Coord(
        lon: lon,
        lat: lat,
      );

  num get lon => _lon;

  num get lat => _lat;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lon'] = _lon;
    map['lat'] = _lat;
    return map;
  }
}
