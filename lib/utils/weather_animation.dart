String getWeatherAnimation(String code) {
  switch (code) {
    case '01d':
      return 'assets/sun.json';
    case '01n':
      return 'assets/moon.json';
    case '02d':
      return 'assets/sun_clouds.json';
    case '02n':
      return 'assets/moon_clouds.json';
    case '03d':
      return 'assets/clouds.json';
    case '03n':
      return 'assets/clouds.json';
    case '04d':
      return 'assets/clouds.json';
    case '04n':
      return 'assets/clouds.json';
    case '09d':
      return 'assets/rain.json';
    case '09n':
      return 'assets/rain.json';
    case '10d':
      return 'assets/sun_rain.json';
    case '10n':
      return 'assets/moon_rain.json';
    case '11d':
      return 'assets/thunder_rain.json';
    case '11n':
      return 'assets/thunder_rain.json';
    case '13d':
      return 'assets/snow.json';
    case '13n':
      return 'assets/snow.json';
    case '50d':
      return 'assets/mist.json';
    case '50n':
      return 'assets/mist.json';
    default:
      return 'assets/sun.json';
  }
}