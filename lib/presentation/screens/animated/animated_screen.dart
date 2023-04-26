import 'dart:math' show Random;
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const routeName = "animatedScreen";
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double height = 50;
  double borderRadius = 10;
  Color color = Colors.indigo;

  void changeShape() {
    final random = Random();
    width = random.nextInt(1000) + 50;
    height = random.nextInt(1000) + 50;
    borderRadius = random.nextInt(100) + 10;
    color = Color.fromRGBO(random.nextInt(255) + 1, random.nextInt(255) + 1,
        random.nextInt(255) + 1, 1.0);
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
          duration: const Duration(seconds: 1),
          curve: Curves.easeOutCubic,
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(borderRadius)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: changeShape, child: const Icon(Icons.play_arrow_rounded)),
    );
  }
}
