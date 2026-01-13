import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreenRiverpod extends ConsumerWidget {
  static const name = "counter_riverpod";
  const CounterScreenRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clikcCounter = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(isDarkThemeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Riverpod Introduction",
        ),
        actions: [
          IconButton(
            // icon: Icon(Icons.light_mode_outlined),
            icon: Icon(isDarkMode
                ? Icons.dark_mode_outlined
                : Icons.light_mode_outlined),
            onPressed: () {
              ref.read(isDarkThemeProvider.notifier).update((state) => !state);
            },
          ),
        ],
      ),
      body: Center(
        child: Text("Valor de: $clikcCounter ",
            style: Theme.of(context).textTheme.titleLarge),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
          /* Other way
          ref.read( counterProvider.notifier ).update((state) => state + 1);  */
        },
      ),
    );
  }
}
