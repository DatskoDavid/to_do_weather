import 'current_dto.dart';

class WeatherDTO {
  final num lat;
  final num lon;
  final String timezone;
  final num timezoneOffset;
  final CurrentDTO current;

  WeatherDTO({
    required this.lat,
    required this.lon,
    required this.timezone,
    required this.timezoneOffset,
    required this.current,
  });
}
