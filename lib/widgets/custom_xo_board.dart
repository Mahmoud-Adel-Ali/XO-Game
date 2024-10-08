import 'package:flutter/material.dart';
import 'package:xo_game/widgets/custom_xo_box.dart';

class CustomXOBoard extends StatelessWidget {
  const CustomXOBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          color: const Color(0xff525D79),
          border: Border.all(color: Colors.black, width: 1.0),
        ),
        child: GridView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
          ),
          itemCount: 9,
          itemBuilder: (context, index) {
            return CustomXOBox(index: index);
          },
        ),
      ),
    );
  }
}
