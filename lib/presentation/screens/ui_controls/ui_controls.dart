import 'package:flutter/material.dart';

class UiControlsScreen extends StatefulWidget {
  static const name = 'ui_controls';
  const UiControlsScreen({super.key});

  @override
  State<UiControlsScreen> createState() => _UiControlsScreenState();
}

class _UiControlsScreenState extends State<UiControlsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ui controls',
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: _UiControlsView(),
    );
  }
}

enum Transportation { car, plane, boat, submarine } // Esto es una enumeracion

class _UiControlsView extends StatefulWidget {
  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTrasportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles Adicionalesx'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('Vehiculo de transporte: '),
          subtitle: Text('$selectedTrasportation'),
          children: [
            RadioListTile(
                title: const Text('By Car'),
                subtitle: const Text('Travel by car'),
                value: Transportation.car,
                groupValue: selectedTrasportation,
                onChanged: (value) => setState(() {
                      selectedTrasportation = Transportation.car;
                    })),
            RadioListTile(
                title: const Text('By Plane'),
                subtitle: const Text('Travel by Plane'),
                value: Transportation.plane,
                groupValue: selectedTrasportation,
                onChanged: (value) => setState(() {
                      selectedTrasportation = Transportation.plane;
                    })),
            RadioListTile(
                title: const Text('By Boat'),
                subtitle: const Text('Travel by boat'),
                value: Transportation.boat,
                groupValue: selectedTrasportation,
                onChanged: (value) => setState(() {
                      selectedTrasportation = Transportation.boat;
                    })),
            RadioListTile(
                title: const Text('By Submarine'),
                subtitle: const Text('Travel by submarine'),
                value: Transportation.submarine,
                groupValue: selectedTrasportation,
                onChanged: (value) => setState(() {
                      selectedTrasportation = Transportation.submarine;
                    }))
          ],
        )
      ],
    );
  }
}
