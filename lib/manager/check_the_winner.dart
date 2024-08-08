import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:xo_game/data/board_data.dart';
import 'package:xo_game/views/game_view.dart';
import 'package:xo_game/widgets/custom_button.dart';
import 'package:xo_game/widgets/show_awesome_dialog.dart';

checkTheWinner(BuildContext context) {
  List<String> list = boardCells;
  bool firstRow = (list[0] == list[1] && list[1] == list[2]);
  bool secondRow = (list[3] == list[4] && list[4] == list[5]);
  bool thirdRow = (list[6] == list[7] && list[7] == list[8]);
  bool firstCol = (list[0] == list[3] && list[3] == list[6]);
  bool secondCol = (list[1] == list[4] && list[4] == list[7]);
  bool thirdCol = (list[2] == list[5] && list[5] == list[8]);
  bool diagonal1 = (list[0] == list[4] && list[4] == list[8]);
  bool diagonal2 = (list[2] == list[4] && list[4] == list[6]);

  if ((firstRow || firstCol || diagonal1) && list[0] == 'x') {
    xWins(context);
  } else if ((firstRow || firstCol || diagonal1) && list[0] == 'o') {
    oWins(context);
  } else if ((thirdRow || thirdCol) && list[8] == 'x') {
    xWins(context);
  } else if ((thirdRow || thirdCol) && list[8] == 'o') {
    oWins(context);
  } else if ((secondCol || secondRow) && list[4] == 'x') {
    xWins(context);
  } else if ((secondCol || secondRow) && list[4] == 'o') {
    oWins(context);
  } else if (diagonal2 && list[2] == 'x') {
    xWins(context);
  } else if (diagonal2 && list[2] == 'o') {
    oWins(context);
  } else if (counter == 9) {
    gameOver = true;
    showAwesomDialog(
      context,
      title: 'Game Over!',
      desc: '',
      dialogType: DialogType.error,
      btnCancel: CustomButton(
      onPressed: () {
        Navigator.pop(context);
        counter = 0;
        boardCells = ['', '', '', '', '', '', '', '', ''];
        gameOver = false;
        turnXOBoard = !turnXOBoard;
        currentPlayer = turnXOBoard ? 'x' : 'o';
        xIsPlay = turnXOBoard;
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const GameView()));
      },
      text: 'Clean Board',
      color: Colors.red.shade900,
    ),
    
    );
  }
}

void oWins(BuildContext context) {
  numOfWinsForO++;
  boardMessage(context, title: 'Player O wins!');
}

void xWins(BuildContext context) {
  numOfWinsForX++;
  boardMessage(context, title: 'Player X wins!');
}

boardMessage(BuildContext context, {required String title}) {
  gameOver = true;
  showAwesomDialog(
    context,
    title: title,
    desc: '',
    btnCancel: CustomButton(
      onPressed: () {
        Navigator.pop(context);
        counter = 0;
        boardCells = ['', '', '', '', '', '', '', '', ''];
        gameOver = false;
        turnXOBoard = !turnXOBoard;
        currentPlayer = turnXOBoard ? 'x' : 'o';
        xIsPlay = turnXOBoard;
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const GameView()));
      },
      text: 'New board',
      color: Colors.red.shade900,
    ),
    btnOk: CustomButton(
      onPressed: () {
        Navigator.pop(context);
      },
      text: 'Ok',
      color: Colors.green.shade900,
    ),
  );
}
