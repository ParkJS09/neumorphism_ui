import 'package:flutter/material.dart';
import '../../theme/neu_colors.dart';

class NeuToast extends StatelessWidget {
  final String message;
  final Duration duration;
  final VoidCallback? onDismissed;

  const NeuToast({
    Key? key,
    required this.message,
    this.duration = const Duration(seconds: 2),
    this.onDismissed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: NeuColors.textPrimary,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, 4),
              blurRadius: 12,
            ),
          ],
        ),
        child: Text(
          message,
          style: TextStyle(
            color: NeuColors.background,
          ),
        ),
      ),
      onEnd: () {
        Future.delayed(duration).then((_) {
          onDismissed?.call();
        });
      },
    );
  }
}
