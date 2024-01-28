import '../../domain/models/weather.dart';

class WeatherDTO {
  final String name;
  final num temp;
  final num feelsLike;
  final num tempMin;
  final num tempMax;
  final num pressure;
  final num humidity;

  WeatherDTO({
    required this.name,
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
  });

  factory WeatherDTO.fromJson(Map<String, dynamic> json) {
    return WeatherDTO(
      name: json['name'] as String,
      temp: json['main']['temp'] as num,
      feelsLike: json['main']['feels_like'] as num,
      tempMin: json['main']['temp_min'] as num,
      tempMax: json['main']['temp_max'] as num,
      pressure: json['main']['pressure'] as num,
      humidity: json['main']['humidity'] as num,
    );
  }

  Weather toDomain() {
    return Weather(
      city: name,
      temp: temp.toDouble(),
      feelsLike: feelsLike.toDouble(),
      tempMin: tempMin.toDouble(),
      tempMax: tempMax.toDouble(),
      pressure: pressure.toDouble(),
      humidity: humidity.toDouble(),
    );
  }
}
