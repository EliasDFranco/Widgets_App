import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Estado => isDarkThemeProvider = boolean
final isDarkThemeProvider = StateProvider((ref) => false);

// List of inmutable colors
final colorListProvider = Provider((ref) => colorList);
