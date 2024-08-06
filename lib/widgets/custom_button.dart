import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.textColor,
    this.color,
    this.child,
  });
  final Function()? onPressed;
  final String text;
  final Color? textColor;
  final Color? color;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color ?? Colors.cyan,
      minWidth: MediaQuery.sizeOf(context).width*0.7,
      height: 60,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child:child ?? Text(
        text,
        style: TextStyle(
          color: textColor ?? Colors.white,
        ),
      ),
    );
  }
}
