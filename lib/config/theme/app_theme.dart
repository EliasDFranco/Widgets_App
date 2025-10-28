import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.purple,
  Colors.green,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  })  : assert(selectedColor >= 0, 'Selected Color must be greater then 0'),
        assert(selectedColor < colorList.length,
            'Selected Color must be lest or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: false,
      ));
}
