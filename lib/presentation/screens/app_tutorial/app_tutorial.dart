import 'package:flutter/material.dart';

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
    return PageView(
        physics: const BouncingScrollPhysics(),
        children: slides
            .map((slideData) => _Slide(
                title: slideData.title,
                caption: slideData.caption,
                imageUrl: slideData.imageUrl))
            .toList());
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
    return Container();
  }
}
