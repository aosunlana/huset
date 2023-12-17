import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:huset/config/styles/colors/app_colors.dart';
import 'package:huset/config/styles/decorations/app_decorations.dart';
import 'package:huset/config/styles/text_styles/app_text_styles.dart';
import 'package:huset/core/utils/validation/validation_builder.dart';

import 'adaptive_button.dart';

class AdaptiveTextField extends StatefulWidget {
  final bool autocorrect;
  final AutovalidateMode autovalidateMode;
  final List<TextInputFormatter>? inputFormatters;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final ValueChanged<String>? onChanged;
  final TextInputAction? textInputAction;
  final ValidationRuleCallback? validator;
  final TextEditingController? controller;

  const AdaptiveTextField({
    this.autocorrect = true,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.inputFormatters,
    this.labelText,
    this.keyboardType,
    this.obscureText = false,
    this.onChanged,
    this.textInputAction,
    this.validator,
    super.key,
    this.controller,
  });

  @override
  _AdaptiveTextFieldState createState() => _AdaptiveTextFieldState();
}

class _AdaptiveTextFieldState extends State<AdaptiveTextField> {
  late bool obscureText = widget.obscureText;
  bool hasFocus = false;
  late bool hasText = widget.controller!.text.isNotEmpty;
  bool hadFirstFocus = false;
  bool forcedValidation = false;

  bool get isValid =>
      widget.validator?.call(widget.controller!.text, context) == null;

  bool get showError {
    if (forcedValidation && !isValid) {
      return true;
    }
    switch (widget.autovalidateMode) {
      case AutovalidateMode.always:
        return !isValid;
      case AutovalidateMode.onUserInteraction:
        return !isValid && hadFirstFocus;
      case AutovalidateMode.disabled:
        return false;
    }
  }

  @override
  void initState() {
    super.initState();
    widget.controller!.addListener(textEditingControllerListener);
  }

  @override
  void dispose() {
    widget.controller!
      ..removeListener(textEditingControllerListener)
      ..dispose();
    super.dispose();
  }

  void focusNodeListener() {
    setState(() {
      if (!hasFocus) {
        hadFirstFocus = true;
      }
    });
  }

  void textEditingControllerListener() {
    setState(() => hasText = widget.controller!.text.isNotEmpty);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: widget.autocorrect,
      controller: widget.controller,
      decoration: AppDecorations.input
          .standard(
            isValid: !showError || isValid,
            labelText: widget.labelText,
          )
          .copyWith(
            suffixIcon: widget.obscureText
                ? IntrinsicWidth(
                    child: _buildShowObsureTextButton(),
                  )
                : null,
          ),
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.keyboardType,
      obscureText: obscureText,
      onChanged: widget.onChanged,
      style: AppTextStyles.h6().copyWith(
        fontWeight: FontWeight.normal,
      ),
      validator: (text) {
        setState(
          () => forcedValidation = true,
        );
        return widget.validator?.call(text, context);
      },
    );
  }

  Widget _buildShowObsureTextButton() {
    return AdaptiveButton(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      onPressed: () => setState(
        () => obscureText = !obscureText,
      ),
      padding: EdgeInsets.zero,
      child: Icon(
        obscureText ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
        color: AppColors.black,
      ),
    );
  }
}
