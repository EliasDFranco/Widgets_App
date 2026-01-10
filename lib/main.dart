import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(
      const ProviderScope(child: MyApp()),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: app_router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).getTheme(),
    );
  }
}
