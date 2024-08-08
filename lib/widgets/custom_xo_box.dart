// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:xo_game/constant.dart';
import 'package:xo_game/data/board_data.dart';
import 'package:xo_game/manager/check_the_winner.dart';
import 'package:xo_game/widgets/o_char.dart';
import 'package:xo_game/widgets/x_char.dart';

class CustomXOBox extends StatefulWidget {
  const CustomXOBox({
    super.key,
    required this.index,
  });
  final int index;

  @override
  State<CustomXOBox> createState() => _CustomXOBoxState();
}

class _CustomXOBoxState extends State<CustomXOBox> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gameOver
          ? null
          : isClicked
              ? null
              : () {
                  print('=================');
                  print('counter $counter');
                  print('isClicked $isClicked');
                  print(
                      'boardCells[${widget.index}] ${boardCells[widget.index]}');
                  print('xIsPlay $xIsPlay');
                  print('currentPlayer $currentPlayer');
                  print('gameOver $gameOver');
                  isClicked = true;
                  counter++;
                  boardCells[widget.index] = currentPlayer;
                  xIsPlay = !xIsPlay;
                  currentPlayer = xIsPlay ? 'x' : 'o';
                  setState(() {});
                  setState(() {
                    checkTheWinner(context);
                  });
                  print('=================');
                  print('counter $counter');
                  print('isClicked $isClicked');
                  print(
                      'boardCells[${widget.index}] ${boardCells[widget.index]}');
                  print('xIsPlay $xIsPlay');
                  print('currentPlayer $currentPlayer');
                  print('gameOver $gameOver');
                  print('=================');
                },
      child: Container(
        height: 135,
        width: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: xoBox,
          border: Border.all(color: Colors.black12, width: 2),
        ),
        child: isClicked
            ? boardCells[widget.index] == 'x'
                ? const XChar()
                : const OChar()
            : null,
      ),
    );
  }
}
