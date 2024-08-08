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
                  isClicked = true;
                  counter++;
                  boardCells[widget.index] = currentPlayer;
                  xIsPlay = !xIsPlay;
                  currentPlayer = xIsPlay ? 'x' : 'o';
                  checkTheWinner(context);
                  setState(() {});
                },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: xoBox,
          border: Border.all(color:mainColor, width: 1),
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
