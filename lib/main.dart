import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
=======
import 'package:widgets_app/presentation/screens/home_screen.dart';

import 'config/theme/app_theme.dart';
>>>>>>> 01d4c482a0cfccba766b54dff42eb4a91d7207e3

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: app_router,
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      theme: AppTheme(selectedColor: 1).getTheme(),
=======
      theme: AppTheme(selectedColor: 0).getTheme(),
      title: 'Material App',
      home: const HomeScreen(),
      centerTitle: false,
>>>>>>> 01d4c482a0cfccba766b54dff42eb4a91d7207e3
    );
  }
}
