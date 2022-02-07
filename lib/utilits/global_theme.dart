import 'package:flutter/material.dart';

ThemeData globalTheme() => ThemeData(
  fontFamily: "Georgia",
  splashColor: Colors.red,

  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.light,
    primarySwatch: Colors.grey,
  ).copyWith(
    secondary: Colors.green,
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic,),
    headline2: TextStyle(fontSize: 20.0, fontFamily: "Georgia",color: Colors.red),
  ),
);