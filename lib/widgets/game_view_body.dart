import 'package:flutter/material.dart';
import 'package:xo_game/data/board_data.dart';
import 'package:xo_game/views/game_view.dart';
import 'package:xo_game/widgets/custom_button.dart';
import 'package:xo_game/widgets/custom_xo_board.dart';

class GameViewBody extends StatefulWidget {
  const GameViewBody({super.key});

  @override
  State<GameViewBody> createState() => _GameViewBodyState();
}

class _GameViewBodyState extends State<GameViewBody> {
  @override
  Widget build(BuildContext context) {
    if (gameOver) {
      counter = 0;
      boardCells = ['', '', '', '', '', '', '', '', ''];
      currentPlayer = 'o';
      xIsPlay = false;
      setState(() {});
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomXOBoard(),
        CustomButton(
            onPressed: () {
              counter = 0;
              boardCells = ['', '', '', '', '', '', '', '', ''];
              gameOver = false;
              turnXOBoard = !turnXOBoard;
              currentPlayer = turnXOBoard ? 'x' : 'o';
              xIsPlay = turnXOBoard;
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const GameView()));
            },
            text: 'Reset Bord')
      ],
    );
  }
}
