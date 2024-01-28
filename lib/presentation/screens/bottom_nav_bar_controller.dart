import 'package:flutter/material.dart';
import 'package:to_do_weather/presentation/screens/tasks_screen.dart';
import 'package:to_do_weather/presentation/screens/weather_screen.dart';

import '../widgets/bottom_nav_bar.dart';

class BottomNavBarController extends StatefulWidget {
  static String routeName = '/main_screen';

  const BottomNavBarController({Key? key}) : super(key: key);

  @override
  State<BottomNavBarController> createState() => _BottomNavBarControllerState();
}

class _BottomNavBarControllerState extends State<BottomNavBarController> {
  static int _selectedIndex = 0;

  late final _screens = <Widget>[
    const TasksScreen(),
    const WeatherScreen(),
  ];

  void _onItemTapped(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
