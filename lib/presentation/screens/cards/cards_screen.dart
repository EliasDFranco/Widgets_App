import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  {'elevation': 4.0, 'label': 'Elevation 4'},
  {'elevation': 5.0, 'label': 'Elevation 5'},
];

class CardsScreen extends StatelessWidget {
  static const String name = 'cards_screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Screen'),
        ),
        body: SingleChildScrollView(
          // SingleChildScrollView sirve para poder scrolear en nuestra screen
          child: Column(
            children: [
              ...cards.map((card) => _CardTypeOne(
                  label: card['label'], elevation: card['elevation'])),
              ...cards.map((card) => _CardTypeTwo(
                  label: card['label'], elevation: card['elevation'])),
              ...cards.map((card) => _CardTypeThree(
                  label: card['label'], elevation: card['elevation'])),
              ...cards.map((card) => _CardTypeFour(
                  label: card['label'], elevation: card['elevation'])),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}

class _CardTypeOne extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardTypeOne({super.key, required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.sd_card_rounded),
                  onPressed: () {},
                )),
            // Align un widget para alinear los objetos que necesitamos
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            )
          ],
        ),
      ),
    ); // Card es un widget de Flutter
  }
}

class _CardTypeTwo extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardTypeTwo({super.key, required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: colors.outline,
          )),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.countertops),
                  onPressed: () {},
                )),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - OUTLINE'),
            )
          ],
        ),
      ),
    );
  }
}

class _CardTypeThree extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardTypeThree(
      {super.key, required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.surface,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: colors.primary)),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.mobile_friendly),
                  onPressed: () {},
                )),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("$label - FILLED o LLENO"),
            )
          ],
        ),
      ),
    );
  }
}

class _CardTypeFour extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardTypeFour(
      {super.key, required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: colors.primary)),
      elevation: elevation,
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${elevation.toInt()}//600/250',
            height: 250,
            fit: BoxFit.cover,
          ),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(20)),
                ),
                child: IconButton(
                  icon: const Icon(Icons.add_call),
                  onPressed: () {},
                ),
              )),
        ],
      ),
    );
  }
}
