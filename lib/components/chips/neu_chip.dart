import 'package:flutter/material.dart';
import '../../theme/neu_colors.dart';
import '../../theme/neu_shadows.dart';

class NeuChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback? onPressed;

  const NeuChip({
    Key? key,
    required this.label,
    this.isSelected = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: NeuColors.background,
          borderRadius: BorderRadius.circular(12),
          boxShadow:
              isSelected ? NeuShadows.innerShadow : NeuShadows.outerShadow,
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? NeuColors.primary : NeuColors.textPrimary,
          ),
        ),
      ),
    );
  }
}
