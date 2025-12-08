import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackBarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snakbar = SnackBar(
      content: const Text('El mundo es tuyp'),
      action: SnackBarAction(label: 'Okk!', onPressed: () {}),
      duration: const Duration(seconds: 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(snakbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro'),
        content: const Text('Sabias que en Flutter todo es un WIDGET!'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Rechazar')),
          ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Aceptar')),
        ],
      ),
    ); // Cuando se usa builder, significa que se esta construyendo en tiempo de ejecucion
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar'),
        ),
        body: Center(
          child: Column(children: [
            ElevatedButton(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                      'Estos son todas las licencias que esta app usa',
                      style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    )
                  ]);
                },
                child: const Text('Licencias usadas')),
            ElevatedButton(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar el dialogo')),
          ]),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text('Mostrar SnackBar'),
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: () => showCustomSnackBar(context),
        ));
  }
}
