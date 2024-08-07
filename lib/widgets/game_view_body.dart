import 'package:flutter/material.dart';
import 'package:xo_game/data/board_data.dart';
import 'package:xo_game/views/game_view.dart';
import 'package:xo_game/widgets/custom_button.dart';
import 'package:xo_game/widgets/custom_xo_board.dart';

class GameViewBody extends StatelessWidget {
  const GameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(changeXO ? 'X Click' : 'O Click'),
        const SizedBox(height: 20),
        const CustomXOBoard(),
        CustomButton(
            onPressed: () {
              counter = 0;
              boardCells = ['', '', '', '', '', '', '', '', ''];
              gameOver = false;
              currentPlayer = 'o';
              changeXO = !changeXO;
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const GameView()));
            },
            text: 'Reset Bord')
      ],
    );
  }
}
