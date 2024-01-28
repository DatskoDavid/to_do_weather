import 'dart:convert';

import 'package:http/http.dart' as http;

class RemoteDataSource {
  static Future<void> getWeather(String word) async {
    const baseUrl =
        'https://api.openweathermap.org/data/3.0/onecall?lat=33.44&lon=-94.04&exclude=hourly,daily&appid={e26d52c3c877fdab4a92ad1556982d4b}';
    final requestUrl = baseUrl;

    final response = await http.get(Uri.parse(requestUrl));

    if (response.statusCode == 200) {
      // return WeatherApi.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error: ${response.reasonPhrase}');
    }
  }
}
