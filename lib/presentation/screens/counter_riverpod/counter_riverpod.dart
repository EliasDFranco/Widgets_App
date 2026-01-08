class CounterScreenRiverpod extends StatelessWidget {
  const CounterScreenRiverpod({super.key});

  @override
  Widget build(BuildContext context) {
    static const name = "counter_riverpod";
    return Scaffold(
      appBar: AppBar(
        title: Text("Riverpod Introduction",),
      ),
      body: Center(
        child: Text("Valor de: ", style: Theme.of(context).textTheme.titleLarge),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){},
      ),
    );
  },
}