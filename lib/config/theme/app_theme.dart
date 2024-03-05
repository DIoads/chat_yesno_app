import 'package:flutter/material.dart';

const _customColor = Color.fromARGB(31, 12, 19, 231);
const List<Color> _colorTheme = [
  _customColor,
  Color.fromARGB(255, 14, 7, 37),
  Colors.blue,
  Colors.orange,
  Colors.purple,
  Colors.green,
  Colors.pink,
  Colors.red
];

class Apptheme {
  final int selectColor;

  Apptheme({required this.selectColor})
      : assert(selectColor >= 0 && selectColor < _colorTheme.length,
            'Elegir un valor entre el rango 0 y ${_colorTheme.length - 1}');

  ThemeData theme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectColor],
      brightness: Brightness.dark);
}
