import 'package:flutter/material.dart';
import 'package:huset/config/styles/decorations/app_decorations.dart';
import 'package:huset/config/styles/dimensions/app_dimensions.dart';

import 'adaptive_button.dart';

class AdaptiveOutlineButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;

  const AdaptiveOutlineButton({super.key, required this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppDimensions.padding.smallestSymmetric(),
      decoration: AppDecorations.button.outline(),
      child: AdaptiveButton(
          onPressed: onPressed,
          padding: AppDimensions.padding.defaultSymmetric(),
          decoration: AppDecorations.button.secondary(),
          child: child),
    );
  }
}
