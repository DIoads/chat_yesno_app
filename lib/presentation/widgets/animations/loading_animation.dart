import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class loading_animation extends StatelessWidget {
  final double relativeSize;
  const loading_animation({super.key, required this.relativeSize});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LoadingAnimationWidget.staggeredDotsWave(
          color: Colors.white,
          size: relativeSize,
        ),
      ),
    );
  }
}
