import 'package:flutter/material.dart';
import '../../theme/neu_colors.dart';
import '../../theme/neu_shadows.dart';

class NeuIconButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final EdgeInsets padding;
  final double borderRadius;
  final bool isPrimary;

  const NeuIconButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    this.borderRadius = 12,
    this.isPrimary = true,
  }) : super(key: key);

  @override
  State<NeuIconButton> createState() => _NeuIconButtonState();
}

class _NeuIconButtonState extends State<NeuIconButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) {
        setState(() => _isPressed = false);
        widget.onPressed?.call();
      },
      onTapCancel: () => setState(() => _isPressed = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: widget.padding,
        decoration: BoxDecoration(
          color: widget.isPrimary ? NeuColors.background : NeuColors.secondary,
          borderRadius: BorderRadius.circular(widget.borderRadius),
          boxShadow:
              _isPressed ? NeuShadows.innerShadow : NeuShadows.outerShadow,
        ),
        child: Row(
          children: [
            DefaultTextStyle(
              textAlign: TextAlign.center,
              style: TextStyle(
                color: NeuColors.textPrimary,
                fontSize: 16,
              ),
              child: widget.child,
            ),
          ],
        ),
      ),
    );
  }
}
