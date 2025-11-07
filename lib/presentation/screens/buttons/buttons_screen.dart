import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonScreen extends StatelessWidget {
  static const String name = 'buttons_screens';
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Wrap(
          spacing: 12,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text('Elevated Button')),
            const ElevatedButton(
                onPressed: null, child: Text('Elevated Button Disable')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.assessment_rounded),
                label: const Text('Elevated Icon')),
            OutlinedButton(
                onPressed: () {}, child: const Text('Outlined Button')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.outlined_flag),
                label: const Text('Outlined Button Icon')),
            TextButton(onPressed: () {}, child: const Text('Text Button')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.text_format),
                label: const Text('Text Button  Icon')),

            // TODO: custom button
            const CustomButtons(),

            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.app_blocking_outlined)),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola Icono',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
