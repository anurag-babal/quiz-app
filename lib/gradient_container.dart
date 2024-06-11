import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.color1,
    required this.color2,
    required this.child,
  });

  final Color color1;
  final Color color2;
  final Widget? child;

  final startAlignmnet = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignmnet,
          end: endAlignment,
        ),
      ),
      child: child,
    );
  }
}
