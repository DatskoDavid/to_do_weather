import 'weather_details_dto.dart';

class CurrentDTO {
  final num dt;
  final num sunrise;
  final num sunset;
  final num temp;
  final num feelsLike;
  final num pressure;
  final num humidity;
  final num dewPoint;
  final num uvi;
  final num clouds;
  final num visibility;
  final num windSpeed;
  final num windDeg;
  final num windGust;
  final List<WeatherDetailsDTO> weather;

  CurrentDTO({
    required this.dt,
    required this.sunrise,
    required this.sunset,
    required this.temp,
    required this.feelsLike,
    required this.pressure,
    required this.humidity,
    required this.dewPoint,
    required this.uvi,
    required this.clouds,
    required this.visibility,
    required this.windSpeed,
    required this.windDeg,
    required this.windGust,
    required this.weather,
  });

  factory CurrentDTO.fromJson(Map<String, dynamic> json) {
    final weatherDeatailsJson = json['weather'] as List;

    final weatherDeatailsList = weatherDeatailsJson
        .map(((item) => WeatherDetailsDTO.fromJson(item)))
        .toList();

    return CurrentDTO(
      dt: json['dt'] as num,
      sunrise: json['sunrise'] as num,
      sunset: json['sunset'] as num,
      temp: json['temp'] as num,
      feelsLike: json['feels_like'] as num,
      pressure: json['pressure'] as num,
      humidity: json['humidity'] as num,
      dewPoint: json['dew_point'] as num,
      uvi: json['uvi'] as num,
      clouds: json['clouds'] as num,
      visibility: json['visibility'] as num,
      windSpeed: json['wind_speed'] as num,
      windDeg: json['wind_deg'] as num,
      windGust: json['wind_gust'] as num,
      weather: weatherDeatailsList,
    );
  }
}
