import 'dart:ui';
import 'package:flutter/material.dart';

class ImageFilteredScreen extends StatefulWidget {
  static const name = 'filtered';
  const ImageFilteredScreen({super.key});

  @override
  State<ImageFilteredScreen> createState() => _ImageFilteredScreenState();
}

class _ImageFilteredScreenState extends State<ImageFilteredScreen> {
  double _sigmaX = 0;
  double _sigmaY = 0;
  double _rotZ = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
            child: Image.asset(
              'assets/images/imagesExample.jpg',
              width: 100,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          ImageFiltered(
            imageFilter: ImageFilter.matrix(Matrix4.rotationZ(_rotZ).storage),
            child: const Text(
              'Not only can images be "filtered" in fact any widget " can be place under ImageFiltered"',
              style: TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
          ),
          const Divider(),
          ..._controlWidgets(),
        ],
      ),
    );
  }

  List<Widget> _controlWidgets() {
    return [
      Row(
        children: [
          const Text("SigmaX"),
          Expanded(
            child: Slider(
              max: 20,
              value: _sigmaX,
              onChanged: ((valor) {
                setState(() => _sigmaX = valor);
              }),
            ),
          ),
          Text(_sigmaX.toStringAsFixed(1)),
        ],
      ),
      Row(
        children: [
          const Text('rotation Z'),
          Expanded(
            child: Slider(
              value: _rotZ,
              onChanged: (valor) {
                setState(() => _rotZ = valor);
              },
            ),
          ),
          Text(_rotZ.toStringAsFixed(1)),
        ],
      )
    ];
  }
}
