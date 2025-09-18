
import 'dart:async';

import 'package:flutter/material.dart';

import '../const/image_const.dart';
import '../theme/app_colors.dart';

class SplashPage extends StatefulWidget {
  final Widget child;

  const SplashPage({super.key, required this.child});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => widget.child));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black500,
      body: Center(
        child: ShaderMask(
          shaderCallback:
              (bounds) => LinearGradient(
                colors: [
                  AppColors.green500,

                  AppColors.orangeRed500,
                  AppColors.yellow500,
                  AppColors.blue500,
                ],
              ).createShader(bounds),
          child: Image.asset(
            AppImages.splash,
            scale: 1.5,
            color: Colors.white,
            colorBlendMode: BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
