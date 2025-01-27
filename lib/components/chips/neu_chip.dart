import 'package:flutter/material.dart';
import '../../theme/neu_colors.dart';
import '../../theme/neu_shadows.dart';

class NeuChip extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback? onTap;

  const NeuChip({
    Key? key,
    required this.label,
    this.isActive = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: NeuColors.background,
          borderRadius: BorderRadius.circular(12),
          boxShadow: isActive ? NeuShadows.innerShadow : NeuShadows.outerShadow,
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isActive ? NeuColors.primary : NeuColors.textPrimary,
          ),
        ),
      ),
    );
  }
}
