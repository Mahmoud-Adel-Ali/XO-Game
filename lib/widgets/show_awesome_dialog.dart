import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

showAwesomDialog(BuildContext context,
    {required String title,
    required String desc,
    bool autoDismiss = false,
    String? btnOkText,
    Widget? btnCancel,
    void Function()? btnOkOnPress,
    DialogType dialogType = DialogType.success}) {
  return AwesomeDialog(
    context: context,
    animType: AnimType.rightSlide,
    title: title,
    desc: desc,
    // descTextStyle: Styless.textStyle16,
    // titleTextStyle: Styless.textStyle20bold,
    dialogType: dialogType,
    // btnOkOnPress: btnOkOnPress,
    // btnOkText: btnOkText,
    // autoDismiss: autoDismiss,
    // btnCancel: btnCancel,
  )..show();
}
