
import 'package:flutter/material.dart';

class AppShadows {
  AppShadows._();

  static const List<BoxShadow> card = [
    BoxShadow(
      color: Color(0x08082B50),
      blurRadius: 12,
      offset: Offset(0, 4),
    ),
  ];

  static const List<BoxShadow> button = [
    BoxShadow(
      color: Color(0x180963D9),
      blurRadius: 8,
      offset: Offset(0, 3),
    ),
  ];
}
