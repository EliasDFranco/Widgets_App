import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final slides = <SlideInfo>[
  SlideInfo('Seleccionando la comida', 'Cual elegire',
      'assets/images/imageOneAppTutorial.jpg'),
  SlideInfo('Busca el almuerzo', 'Vamos a buscar el almuerzo',
      'assets/images/imageThreeAppTutorial.jpg'),
  SlideInfo('Comiendo la comida', 'MMM Jon Jomi',
      'assets/images/imageTwoAppTutorial.jpg'),
];

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

class AppTutorialScreen extends StatelessWidget {
  static const name = 'app_tutorial';
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((slideData) => _Slide(
                    title: slideData.title,
                    caption: slideData.caption,
                    imageUrl: slideData.imageUrl))
                .toList()),
        Positioned(
          top: 20,
          right: 50,
          child: TextButton(
            child: const Text('Salir'),
            onPressed: () => context.pop(),
          ),
        ),
      ],
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.titleLarge;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(imageUrl),
            ),
            const SizedBox(height: 20),
            Image(
              image: AssetImage(imageUrl),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              caption,
              style: captionStyle,
            )
          ],
        ),
      ),
    );
  }
}
