import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicator'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          SizedBox(
            height: 30,
          ),
          Text(
            'Esto es un Circular Progress Indicator',
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          CircularProgressIndicator(
            strokeWidth: 2,
            color: Colors.redAccent,
            backgroundColor: Colors.black45,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Esto es un Circular Progress Controlado',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          _ControllerProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
