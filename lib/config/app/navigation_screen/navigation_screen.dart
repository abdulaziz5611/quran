import 'package:flutter/material.dart';
import 'package:quran_app/config/app/home/home_page.dart';
import 'package:quran_app/config/app/theme/app_colors.dart';
import 'package:quran_app/features/listen_quran/presentation/pages/main_quran_page.dart';
import 'package:quran_app/features/mosques/presentation/pages/main_mosque_page.dart';
import 'package:quran_app/features/settings/presentation/pages/setting_page.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _switchIndex(),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.green700,
        unselectedIconTheme: IconThemeData(color: AppColors.white500),
        selectedIconTheme: IconThemeData(color: AppColors.white500),
        unselectedItemColor: AppColors.white500,
        selectedItemColor: AppColors.white500,
        selectedFontSize: 16,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: 'Mosques',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  _switchIndex() {
    switch (_currentIndex) {
      case 0:
        {
          return Center(child: HomePage());
        }
      case 1:
        {
          return Center(child: MainQuranPage());
        }
      case 2:
        {
          return Center(child: MainMosquePage());
        }
      case 3:
        {
          return Center(child: SettingPage());
        }
    }
  }
}
