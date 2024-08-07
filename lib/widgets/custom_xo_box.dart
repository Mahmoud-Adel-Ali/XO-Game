// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:xo_game/constant.dart';
import 'package:xo_game/widgets/o_char.dart';
import 'package:xo_game/widgets/x_char.dart';
  int counter = 0;

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
      onTap: () {
        if (!isClicked) {
          setState(() {
            isClicked = true;
            counter++;
          });
        }
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
            ? counter % 2 == 0
                ? const XChar()
                : const OChar()
            : null,
      ),
    );
  }
}
