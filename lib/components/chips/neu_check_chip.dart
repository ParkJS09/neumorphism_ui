import 'package:flutter/material.dart';
import '../../theme/neu_colors.dart';
import '../../theme/neu_shadows.dart';

class NeuCheckChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback? onPressed;
  final Widget? checkIcon;

  const NeuCheckChip({
    Key? key,
    required this.label,
    this.isSelected = false,
    this.onPressed,
    this.checkIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: NeuColors.background,
          borderRadius: BorderRadius.circular(12),
          boxShadow:
              isSelected ? NeuShadows.innerShadow : NeuShadows.outerShadow,
        ),
        child: Row(
          children: [
            if (isSelected && checkIcon != null) ...[
              const SizedBox(width: 8),
              checkIcon!,
            ],
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? NeuColors.primary : NeuColors.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
