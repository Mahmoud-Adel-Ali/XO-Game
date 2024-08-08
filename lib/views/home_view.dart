import 'package:flutter/material.dart';
import 'package:xo_game/constant.dart';
import 'package:xo_game/views/game_view.dart';
import 'package:xo_game/widgets/custom_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/xo-logo.png',
              height: 111,
            ),
            const SizedBox(height: 30),
            CustomButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const GameView()));
              },
              text: 'Start Game',
            ),
          ],
        ),
      ),
    );
  }
}
