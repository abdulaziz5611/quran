import 'package:flutter/material.dart';

class MainMosquePage extends StatefulWidget {
  const MainMosquePage({super.key});

  @override
  State<MainMosquePage> createState() => _MainMosquePageState();
}

class _MainMosquePageState extends State<MainMosquePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Main Mosque Page')),
    );
  }
}
