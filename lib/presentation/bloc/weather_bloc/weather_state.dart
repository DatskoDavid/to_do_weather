import 'package:equatable/equatable.dart';

import '../../../domain/models/weather.dart';

class WeatherState extends Equatable {
  final Weather weather;

  const WeatherState({
    required this.weather,
  });

  WeatherState copyWith({
    Weather? weather,
  }) =>
      WeatherState(
        weather: weather ?? this.weather,
      );

  @override
  List<Object?> get props => [
        weather,
      ];
}
