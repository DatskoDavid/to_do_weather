import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_weather/domain/di/injector.dart';
import 'package:to_do_weather/presentation/bloc/weather_bloc/weather_bloc.dart';
import 'package:to_do_weather/presentation/bloc/weather_bloc/weather_event.dart';
import 'package:to_do_weather/presentation/bloc/weather_bloc/weather_state.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 82, 163, 230),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: BlocBuilder<WeatherBloc, WeatherState>(
          bloc: injector.get<WeatherBloc>()..add(const InitWeather()),
          builder: (BuildContext context, WeatherState state) {
            return Column(
              children: [
                _weatherInfo('City', state.weather.city, context),
                SizedBox(height: 20),
                _weatherInfo(
                    'Temperature', state.weather.temp.toString(), context),
                SizedBox(height: 20),
                _weatherInfo(
                    'Min temp', state.weather.tempMin.toString(), context),
                SizedBox(height: 20),
                _weatherInfo(
                    'Max temp', state.weather.tempMax.toString(), context),
                SizedBox(height: 20),
                _weatherInfo(
                    'Feels like', state.weather.feelsLike.toString(), context),
                SizedBox(height: 20),
                _weatherInfo(
                    'Pressure', state.weather.pressure.toString(), context),
                SizedBox(height: 20),
                _weatherInfo(
                    'Humidity', state.weather.humidity.toString(), context),
                SizedBox(height: 20),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _weatherInfo(String title, String value, BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
        children: [
          Text(
            '$title: ',
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
          Spacer(),
          Text(
            value,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
