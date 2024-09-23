sealed class WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherSuccess extends WeatherState {}

class WeatherError extends WeatherState {
  final String errorMessage;

  WeatherError(this.errorMessage);
}