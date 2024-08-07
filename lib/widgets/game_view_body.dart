import 'package:flutter/material.dart';
import 'package:xo_game/widgets/custom_xo_board.dart';

class GameViewBody extends StatelessWidget {
  const GameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomXOBoard(),
      ],
    );
  }
}