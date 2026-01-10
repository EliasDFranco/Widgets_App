import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreenRiverpod extends ConsumerWidget {
  const CounterScreenRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int  clikcCounter = ref.watch( counterProvider);

    static const name = "counter_riverpod";
    return Scaffold(
      appBar: AppBar(
        title: Text("Riverpod Introduction",),
      ),
      body: Center(
        child: Text("Valor de: $clickCounter ", style: Theme.of(context).textTheme.titleLarge),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){},
      ),
    );
  },
}