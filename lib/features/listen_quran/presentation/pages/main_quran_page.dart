import 'package:flutter/material.dart';

class MainQuranPage extends StatefulWidget {
  const MainQuranPage({super.key});

  @override
  State<MainQuranPage> createState() => _MainQuranPageState();
}

class _MainQuranPageState extends State<MainQuranPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Main Quran Page')),
    );
  }
}
