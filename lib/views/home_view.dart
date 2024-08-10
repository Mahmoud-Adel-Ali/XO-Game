import 'package:flutter/material.dart';
import 'package:xo_game/constant.dart';
import 'package:xo_game/data/board_data.dart';
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
            Image.asset('assets/images/xo-logo.png', height: 200),
            const SizedBox(height: 30),
            CustomButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const GameView()));
              },
              text: (numOfWinsForO > 0 || numOfWinsForX > 0)
                  ? 'Complete Game'
                  : 'Start Game',
              color: Colors.orange.shade900,
            ),
            const SizedBox(height: 40),
            CustomButton(
              onPressed: () {
                counter = 0;
                boardCells = ['', '', '', '', '', '', '', '', ''];
                gameOver = false;
                currentPlayer = 'o';
                xIsPlay = false;
                turnXOBoard = false;
                numOfWinsForO = 0;
                numOfWinsForX = 0;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const GameView()));
              },
              text: 'New Game',
              color: Colors.purple.shade900,
            ),
          ],
        ),
      ),
    );
  }
}
