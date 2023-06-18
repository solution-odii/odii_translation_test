import 'package:flutter/material.dart';

/// Simple Divider for Items in a Row or Column
Widget lineTrack(Color colour) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 0.0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          color: colour,
          height: 30,
          width: 1.5,
        ),
      ],
    ),
  );
}
