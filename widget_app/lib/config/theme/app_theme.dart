import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.purple,
  Colors.teal,
  Colors.pinkAccent,
  Colors.green,
  Colors.deepOrangeAccent
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({this.selectedColor = 0, this.isDarkMode = false})
  :assert(
    selectedColor >= 0, 'Selected color must be greater than 0'
  ),
  assert( selectedColor < colorList.length, 'Selected color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme () => ThemeData(
    useMaterial3: true,
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme( //El padre de todos los AppBar
      centerTitle: true,
    )
  );

}