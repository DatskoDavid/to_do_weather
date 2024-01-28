import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_weather/domain/repositories/weather_repository.dart';

import '../../../domain/models/weather.dart';
import 'weather_event.dart';
import 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository _repository;

  WeatherBloc(this._repository)
      : super(
          WeatherState(
            weather: Weather(
              city: '',
              temp: 0,
              feelsLike: 0,
              tempMin: 0,
              tempMax: 0,
              pressure: 0,
              humidity: 0,
            ),
          ),
        ) {
    on<InitWeather>(_init);
  }

  void _init(_, Emitter<WeatherState> emit) async {
    final weather = await _repository.getWeather();
    emit(state.copyWith(weather: weather));
  }
}
