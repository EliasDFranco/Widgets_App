import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentation/screens/home/home_screen.dart';

import 'config/theme/app_theme.dart';
import 'presentation/screens/buttons/buttons_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).getTheme(),
      title: 'Material App',
      home: const HomeScreen(),
      routes: {
        '/buttons': (context) => const ButtonScreen(),
        '/cards': (context) => const CardsScreen(),
      },
    );
  }
}
