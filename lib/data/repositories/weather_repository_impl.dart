import 'package:to_do_weather/data/data_sources/remote_data_source.dart';
import 'package:to_do_weather/domain/models/task.dart';
import 'package:to_do_weather/domain/repositories/weather_repository.dart';

import '../../domain/models/weather.dart';
import '../data_sources/database_data_source.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final RemoteDataSource remoteDataSource;

  WeatherRepositoryImpl(this.remoteDataSource);

  @override
  Future<Weather> getWeather() async => remoteDataSource.getWeather();
}
