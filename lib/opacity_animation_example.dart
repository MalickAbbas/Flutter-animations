import 'package:flutter/material.dart';

class OpacityAnimationExample extends StatefulWidget {
  const OpacityAnimationExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OpacityAnimationExampleState createState() => _OpacityAnimationExampleState();
}

class _OpacityAnimationExampleState extends State<OpacityAnimationExample> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(seconds: 2),
          child: const FlutterLogo(size: 100),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _opacity = _opacity == 1.0 ? 0.0 : 1.0;
            });
          },
          child: const Text('Toggle Opacity'),
        ),
      ],
    );
  }
}
