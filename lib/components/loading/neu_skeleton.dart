import 'package:flutter/material.dart';
import '../../theme/neu_colors.dart';

class NeuSkeleton extends StatefulWidget {
  final double width;
  final double height;
  final double borderRadius;

  const NeuSkeleton({
    Key? key,
    required this.width,
    required this.height,
    this.borderRadius = 4,
  }) : super(key: key);

  @override
  State<NeuSkeleton> createState() => _NeuSkeletonState();
}

class _NeuSkeletonState extends State<NeuSkeleton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                NeuColors.secondary,
                NeuColors.border,
                NeuColors.secondary,
              ],
              stops: [
                0.0,
                _controller.value,
                1.0,
              ],
            ),
          ),
        );
      },
    );
  }
}
