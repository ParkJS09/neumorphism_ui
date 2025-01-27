import 'package:flutter/material.dart';
import '../../theme/neu_colors.dart';
import '../../theme/neu_shadows.dart';

class NeuTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;

  const NeuTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: NeuColors.background,
        borderRadius: BorderRadius.circular(12),
        boxShadow: NeuShadows.innerShadow,
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: NeuColors.textSecondary),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(16),
        ),
        style: TextStyle(color: NeuColors.textPrimary),
      ),
    );
  }
}
