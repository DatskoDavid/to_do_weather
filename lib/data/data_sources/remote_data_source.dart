import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../domain/models/weather.dart';
import '../models/weather_dto.dart';

class RemoteDataSource {
  Future<Weather> getWeather() async {
    const baseUrl =
        'http://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=e26d52c3c877fdab4a92ad1556982d4b';

    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      return WeatherDTO.fromJson(json.decode(response.body)).toDomain();
    } else {
      throw Exception('Error: ${response.reasonPhrase}');
    }
  }
}
