import 'package:flutter/material.dart';
import 'package:huset/l10n/app_loc.dart';

import 'validation_util.dart';

typedef ValidationRuleCallback = String? Function(
    String? value, BuildContext context);

class ValidationBuilder {
  final List<ValidationRuleCallback> rules = [];

  ValidationBuilder add(ValidationRuleCallback validator) {
    return this..rules.add(validator);
  }

  ValidationBuilder isValidEmail() {
    return add(
      (text, context) => ValidatorsUtil.isValidEmail(text)
          ? null
          : AppLoc.of(context).validationRuleIsValidEmail,
    );
  }

  ValidationBuilder isNotBlank() {
    return add(
      (text, context) => ValidatorsUtil.isNotBlank(text)
          ? null
          : AppLoc.of(context).validationRuleNotBlank,
    );
  }

  ValidationBuilder isValidCardCvv() {
    return add(
      (text, context) => ValidatorsUtil.isNotBlank(text) &&
              ValidatorsUtil.isNotLessThan(text ?? '', 3) &&
              ValidatorsUtil.isNotLongerThan(text ?? '', 3)
          ? null
          : AppLoc.of(context).validationRuleIsValidCardCvv,
    );
  }

  String? build(String? text, BuildContext context) {
    for (final rule in rules) {
      final result = rule(text, context);
      if (result != null) {
        return result;
      }
    }
    return null;
  }
}
