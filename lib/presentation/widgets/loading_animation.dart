import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class loading_animation extends StatelessWidget {
  const loading_animation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LoadingAnimationWidget.staggeredDotsWave(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
