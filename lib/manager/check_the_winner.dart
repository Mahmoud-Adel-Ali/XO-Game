import 'package:flutter/material.dart';
import 'package:xo_game/data/board_data.dart';
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
    showAwesomDialog(context, title: 'Game Over!', desc: '');
  }
}

void oWins(BuildContext context) {
  gameOver = true;
  showAwesomDialog(context, title: 'Player O wins!', desc: '');
}

void xWins(BuildContext context) {
  gameOver = true;
  showAwesomDialog(context, title: 'Player X wins!', desc: '');
}
