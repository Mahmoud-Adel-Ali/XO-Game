import 'package:flutter/material.dart';
import 'package:xo_game/constant.dart';
import 'package:xo_game/widgets/game_view_body.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body: GameViewBody(),
      ),
    );
  }
}