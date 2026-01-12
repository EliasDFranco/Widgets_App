import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/main.dart';
import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

void main() => runApp(const MyApp());

class ThemeChangerScreen extends ConsumerWidget {
  static const name = 'theme_changer';
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isDarkTheme = ref.watch(isDarkThemeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer Screen'),
        actions: [
          IconButton(
            icon: Icon(isDarkTheme
                ? Icons.dark_mode_outlined
                : Icons.light_mode_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: const __ThemeChangerView(),
    );
  }
}

class __ThemeChangerView extends ConsumerWidget {
  const __ThemeChangerView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.read(colorListProvider);
    return ListView.builder(
        itemCount: colors.length,
        itemBuilder: ((context, index) {
          final Color color = colors[index];
          return RadioListTile(
              title: Text(
                "Este color ",
                style: TextStyle(
                  color: color,
                ),
              ),
              subtitle: Text('${color.value}'),
              value: index,
              groupValue: 5,
              onChanged: (value) {
                // TODO: notificar el cambio de color
              });
        }));
  }
}
