import 'package:flutter/material.dart';

class MainQiblaPage extends StatefulWidget {
  const MainQiblaPage({super.key});

  @override
  State<MainQiblaPage> createState() => _MainQiblaPageState();
}

class _MainQiblaPageState extends State<MainQiblaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Qibla Direction Page')),
    );
  }
}
