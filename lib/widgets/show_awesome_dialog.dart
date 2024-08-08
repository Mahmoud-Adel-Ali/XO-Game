import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

showAwesomDialog(BuildContext context,
    {required String title,
    required String desc,
    bool autoDismiss = false,
    Widget? btnCancel,
    void Function()? btnOkOnPress,
    Widget? btnOk,
    DialogType dialogType = DialogType.success}) {
  return AwesomeDialog(
    dialogBackgroundColor: Colors.purple.shade900,
    context: context,
    animType: AnimType.topSlide,
    title: title,
    desc: desc,
    descTextStyle: const TextStyle(fontSize: 20),
    titleTextStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    dialogType: dialogType,
    btnCancel: btnCancel,
    btnOk: btnOk,
  )..show();
}
