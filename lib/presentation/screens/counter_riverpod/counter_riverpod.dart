import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreenRiverpod extends ConsumerWidget {
  const CounterScreenRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int  clikcCounter = ref.watch( counterProvider);
    final bool isDarkMode = ref.watch( counterProvider);

    static const name = "counter_riverpod";
    return Scaffold(
      appBar: AppBar(
        title: Text("Riverpod Introduction",),
        actions = {
          IconButton(
            // icon: Icon(Icons.light_mode_outlined),
            icon: Icon(isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode_outlined),
            onPressed: ( ){
            },
              ref.read( isDarkThemeProvider.notifier).update((state) => !state);
          ),
        }
      ),
      body: Center(
        child: Text("Valor de: $clickCounter ", style: Theme.of(context).textTheme.titleLarge),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          ref.read( counterProvider.notifier ).state++;

          / Other way
        },
          ref.read( counterProvider.notifier ).update((state) => state + 1);  
      ),
    );
  },
}