import 'package:flutter/material.dart';
import 'package:xo_game/widgets/o_char.dart';
import 'package:xo_game/widgets/x_char.dart';

class GameViewBody extends StatelessWidget {
  const GameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        XChar(),
        OChar(),
      ],
    );
  }
}