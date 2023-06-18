
import 'dart:async';


import 'package:flutter/material.dart';






/// this method collects a customized ui and pops it as an alert dialog
openDialog(Widget widget, BuildContext context, {barrierDismissible = false}) {
  showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {

        return widget;
      });
}
openDialogTop(Widget widget, BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {

        return Align(
            alignment: Alignment.topCenter,
            child: widget);
      });
}


