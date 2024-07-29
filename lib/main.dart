import 'package:flutter/material.dart';
import 'opacity_animation_example.dart';
import 'translate_animation_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Animations Example')),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OpacityAnimationExample(),
            SizedBox(height: 50),
            TranslateAnimationExample(),
          ],
        ),
      ),
    );
  }
}
