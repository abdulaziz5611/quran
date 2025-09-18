import 'package:flutter/material.dart';
import 'package:quran_app/config/app/navigation_screen/navigation_screen.dart';

import 'config/app/home/home_page.dart';
import 'config/app/splash/splash_page.dart';

void main (){
  runApp(MyApp());

}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: SplashPage(child: NavigationScreen()),);
  }
}
