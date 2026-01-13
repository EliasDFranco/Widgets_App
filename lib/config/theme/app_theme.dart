import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.purple,
  Colors.green,
  Colors.indigoAccent,
  Colors.redAccent,
  Colors.lightGreenAccent,
  Colors.cyanAccent
];

class AppTheme {
  final int selectedColor;
  final bool isDarkTheme;

  AppTheme({
    this.selectedColor = 0,
    this.isDarkTheme = false,
  })  : assert(selectedColor >= 0, 'Selected Color must be greater then 0'),
        assert(selectedColor < colorList.length,
            'Selected Color must be lest or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkTheme ? Brightness.light : Brightness.dark,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: false,
      ));

  // Nuevo método para usar el toggleDarkMode
  AppTheme copyWith({int? selectedColor, bool? isDarkTheme}) => AppTheme(
        selectedColor: selectedColor ?? this.selectedColor,
        isDarkTheme: isDarkTheme ?? this.isDarkTheme,
      ); //El copyWith sirve para copiar ciertas instancias de una clase
}
