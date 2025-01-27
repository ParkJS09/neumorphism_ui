import 'package:flutter/material.dart';
import 'neu_colors.dart';

class NeuShadows {
  static List<BoxShadow> get outerShadow => [
        BoxShadow(
          color: NeuColors.shadowDark.withOpacity(0.3),
          offset: const Offset(3, 3),
          blurRadius: 6,
        ),
        BoxShadow(
          color: NeuColors.shadowLight.withOpacity(0.8),
          offset: const Offset(-3, -3),
          blurRadius: 6,
        ),
      ];

  static List<BoxShadow> get innerShadow => [
        BoxShadow(
          color: NeuColors.shadowDark.withOpacity(0.3),
          offset: const Offset(2, 2),
          blurRadius: 5,
          spreadRadius: -1,
        ),
        BoxShadow(
          color: NeuColors.shadowLight.withOpacity(0.8),
          offset: const Offset(-2, -2),
          blurRadius: 5,
          spreadRadius: -1,
        ),
      ];
}
