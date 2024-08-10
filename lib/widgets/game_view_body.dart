import 'package:flutter/material.dart';
import 'package:xo_game/data/board_data.dart';
import 'package:xo_game/views/game_view.dart';
import 'package:xo_game/widgets/custom_button.dart';
import 'package:xo_game/widgets/custom_x_o_score.dart';
import 'package:xo_game/widgets/custom_xo_board.dart';
import 'package:xo_game/widgets/o_char.dart';
import 'package:xo_game/widgets/x_char.dart';

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
      children: [
        CustomXOScore(
            numOfWinsForO: numOfWinsForO, numOfWinsForX: numOfWinsForX),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            xIsPlay ? const XChar(fontsize: 40) : const OChar(fontsize: 40),
            const SizedBox(width: 20),
            const Text(' Click first', style: TextStyle(fontSize: 30)),
          ],
        ),
        const SizedBox(height: 10),
        const CustomXOBoard(),
        const Expanded(child: SizedBox()),
        CustomButton(
            onPressed: () {
              counter = 0;
              boardCells = ['', '', '', '', '', '', '', '', ''];
              gameOver = false;
              currentPlayer = turnXOBoard ? 'x' : 'o';
              xIsPlay = turnXOBoard;
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const GameView()));
            },
            text: 'Reset Board',
            color: Colors.purple.shade900,
            ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}
