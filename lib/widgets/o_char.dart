import 'package:flutter/material.dart';

class OChar extends StatelessWidget {
  const OChar({super.key, this.fontsize});
  final double? fontsize;
  @override
  Widget build(BuildContext context) {
    return Text(
      'O',
      style: TextStyle(
        fontSize: fontsize ?? 80,
        fontWeight: FontWeight.bold,
        color: Colors.green,
      ),
    );
  }
}
