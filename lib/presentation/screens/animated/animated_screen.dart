import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {
  static const name = 'animeted_screen';
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double widthh = 50;
  double heigthh = 50;
  Color colorr = Colors.blueAccent;
  double borderRadiuss = 20.0;

  void ChangeShape() {
    final random = Random();
    widthh = random.nextInt(300) + 150;
    heigthh = random.nextInt(200) + 140;
    colorr;
    borderRadiuss = random.nextDouble() * 50;

    colorr = Color.fromRGBO(
        random.nextInt(256), random.nextInt(250), random.nextInt(256), 1);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInSine,
          width: widthh <= 0 ? 0 : widthh,
          height: heigthh <= 0 ? 0 : heigthh,
          decoration: BoxDecoration(
            color: colorr,
            borderRadius:
                BorderRadius.circular(borderRadiuss < 0 ? 0 : borderRadiuss),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ChangeShape,
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
