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
                  label: card['label'], elevation: card['elevation']))
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
