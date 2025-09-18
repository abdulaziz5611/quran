import 'package:flutter/material.dart';

class MainWeatherPage extends StatefulWidget {
  const MainWeatherPage({super.key});

  @override
  State<MainWeatherPage> createState() => _MainWeatherPageState();
}

class _MainWeatherPageState extends State<MainWeatherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Weather Page')),
    );
  }
}
