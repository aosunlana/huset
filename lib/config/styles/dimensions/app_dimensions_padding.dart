part of 'app_dimensions.dart';

class _Padding {
  const _Padding();

  double get defaultValue => 16.0;
  double get smallestValue => 2.0;
  double get smallValue => 8.0;
  double get bigValue => 24.0;
  double get biggerValue => 32.0;
  double get biggestValue => 48.0;

  EdgeInsets defaultHorizontal() {
    return EdgeInsets.symmetric(
      horizontal: defaultValue,
    );
  }

  EdgeInsets smallHorizontal() {
    return EdgeInsets.symmetric(
      horizontal: smallValue,
    );
  }

  EdgeInsets bigHorizontal() {
    return EdgeInsets.symmetric(
      horizontal: bigValue,
    );
  }

  EdgeInsets smallestSymmetric() {
    return EdgeInsets.symmetric(
        horizontal: smallestValue, vertical: smallestValue);
  }

  EdgeInsets defaultSymmetric() {
    return EdgeInsets.symmetric(
        horizontal: defaultValue, vertical: defaultValue);
  }
}
