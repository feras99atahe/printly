import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final ThemeData myTheme = ThemeData(
  fontFamily: 'inter',
  primaryColor: const Color(0xFFFCBA03),
  backgroundColor: Colors.white,
  iconTheme: const IconThemeData(
    color: Color(0xFF535353),
    size: 50,
  ),
  appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontFamily: 'inter',
        fontWeight: FontWeight.normal,
      ),
      color: Colors.white,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Color(0xFF535353),
        size: 50,
      )),
);
