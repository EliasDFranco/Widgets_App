import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackBarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    final snakbar = SnackBar(
      content: const Text('El mundo es tuyp'),
      action: SnackBarAction(label: 'Okk!', onPressed: () {}),
      duration: const Duration(seconds: 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: snakbar));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar'),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text('Mostrar SnackBar'),
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: () => showCustomSnackBar(context),
        ));
  }
}
