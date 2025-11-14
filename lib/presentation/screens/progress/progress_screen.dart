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
    return StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 200), (value) {
          return (value * 2) / 100;
        }).takeWhile((value) => value < 100),
        builder: ((context, snapshot) {
          final progrresValue = snapshot.data ?? 0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircularProgressIndicator(
                  value: 0.5,
                  strokeWidth: 2,
                  backgroundColor: Colors.black12,
                ),
                const SizedBox(
                  height: 20,
                  width: 30,
                ),
                Expanded(child: LinearProgressIndicator(value: progrresValue)),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          );
        }));
  }
}
