import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/home_screen.dart';

import 'config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      title: 'Material App',
      home: const HomeScreen(),
      centerTitle: false,
    );
  }
}
