import 'package:to_do_weather/data/data_sources/remote_data_source.dart';

import '../models/task.dart';
import '../models/weather.dart';

abstract class WeatherRepository {
  final RemoteDataSource remoteDataSource;

  WeatherRepository(this.remoteDataSource);

  Future<Weather> getWeather();
}
