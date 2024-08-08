import 'package:flutter/material.dart';
import 'package:xo_game/widgets/o_char.dart';
import 'package:xo_game/widgets/x_char.dart';

class CustomXOScore extends StatelessWidget {
  const CustomXOScore({
    super.key,
    required this.numOfWinsForO,
    required this.numOfWinsForX,
  });
  final int numOfWinsForO;
  final int numOfWinsForX;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const OChar(),
              const SizedBox(width: 20),
              Text(':   ${numOfWinsForO.toString()}',
                  style: const TextStyle(fontSize: 30)),
            ],
          ),
          const Text('Vs', style: TextStyle(fontSize: 20)),
          Row(
            children: [
              Text('${numOfWinsForX.toString()}   :',
                  style: const TextStyle(fontSize: 30)),
              const SizedBox(width: 20),
              const XChar(),
            ],
          ),
        ],
      ),
    );
  }
}
