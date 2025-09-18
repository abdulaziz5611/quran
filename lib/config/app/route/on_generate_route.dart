
import 'package:flutter/material.dart';
import 'package:quran_app/config/app/home/home_page.dart';
import 'package:quran_app/config/app/navigation_screen/navigation_screen.dart';
import 'package:quran_app/config/app/splash/splash_page.dart';
import 'package:quran_app/features/ai_assistant/presentation/pages/ai_assistant_page.dart';
import 'package:quran_app/features/auto_silent/presentation/pages/auto_silent_page.dart';
import 'package:quran_app/features/settings/presentation/pages/setting_page.dart';
import 'package:quran_app/features/weather/presentation/pages/main_weather_page.dart';

import '../const/page_const.dart';


class OnGenerateRoute {
  static Route<dynamic>? route(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case PageConst.splashPage:
        {
          return materialBuilder(widget: SplashPage(child:NavigationScreen()));
        }
      case PageConst.aiAssistantPage:
        {
          return materialBuilder(widget: AiAssistantPage());
        }
      case PageConst.autoSilentPage:
        {
          return materialBuilder(widget: AutoSilentPage());
        }
      case PageConst.navigationPage:
        {
          return materialBuilder(widget: NavigationScreen());
        }

      case PageConst.homePage:
        {
          return materialBuilder(widget: HomePage());
        }

      case PageConst.settingPage:
        {
          return materialBuilder(widget: SettingPage());
        }
      case PageConst.weatherPage:
        {

        return materialBuilder(widget: MainWeatherPage());
        }



      default:
        return materialBuilder(widget: ErrorPage());
    }
    return null;
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page not found")),
      body: Center(child: Text("Page not found")),
    );
  }
}

MaterialPageRoute materialBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}