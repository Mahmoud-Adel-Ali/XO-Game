import 'package:flutter/material.dart';

class XChar extends StatelessWidget {
  const XChar({super.key, this.fontsize});
  final double? fontsize;
  @override
  Widget build(BuildContext context) {
    return Text(
      'X',
      style: TextStyle(
        fontSize: fontsize ?? 75,
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
    );
  }
}
