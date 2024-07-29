import 'package:flutter/material.dart';

class TranslateAnimationExample extends StatefulWidget {
  const TranslateAnimationExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TranslateAnimationExampleState createState() => _TranslateAnimationExampleState();
}

class _TranslateAnimationExampleState extends State<TranslateAnimationExample> {
  bool _moved = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _moved = !_moved;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(seconds: 2),
        transform: Matrix4.translationValues(_moved ? 100 : 0, _moved ? 100 : 0, 0),
        child: const FlutterLogo(size: 100),
      ),
    );
  }
}
