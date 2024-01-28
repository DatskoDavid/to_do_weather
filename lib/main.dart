import 'package:flutter/material.dart';
import 'package:to_do_weather/data/data_sources/remote_data_source.dart';
import 'package:to_do_weather/domain/di/injector.dart';
import 'package:to_do_weather/presentation/screens/bottom_nav_bar_controller.dart';

import 'data/data_sources/database_data_source.dart';
import 'presentation/screens/tasks_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseDataSource.initializeHive();
  initInjector();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To do / Weather',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomNavBarController(),
    );
  }
}
