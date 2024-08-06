import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:xo_game/constant.dart';
import 'package:xo_game/views/home.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        logo: Image.asset(
          'assets/images/xo-logo.png',
        ),
        backgroundColor: mainColor,
        title: const Text(
          'Tic-Tac-Toe',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        logoWidth: 100,
        showLoader: false,
        navigator: const Home(),
        durationInSeconds: 3,
      ),
    );
  }
}
