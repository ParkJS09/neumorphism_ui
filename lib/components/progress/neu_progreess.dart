import 'package:flutter/material.dart';
import '../../theme/neu_colors.dart';
import '../../theme/neu_shadows.dart';

class NeuProgressBar extends StatelessWidget {
  final double progress;
  final double height;

  const NeuProgressBar({
    Key? key,
    required this.progress,
    this.height = 4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(height / 2),
        boxShadow: NeuShadows.innerShadow,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(height / 2),
        child: Stack(
          children: [
            Container(color: NeuColors.secondary),
            FractionallySizedBox(
              widthFactor: progress,
              child: Container(color: NeuColors.primary),
            ),
          ],
        ),
      ),
    );
  }
}
