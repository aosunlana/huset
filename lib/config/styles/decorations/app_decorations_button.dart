part of 'app_decorations.dart';

class _Button {
  const _Button();

  BorderRadius get _borderRadius => BorderRadius.circular(8.0);

  BoxDecoration primary({
    bool isDisabled = false,
  }) {
    return BoxDecoration(
        borderRadius: _borderRadius,
        color: AppColors.primary100,
        gradient: const LinearGradient(
            colors: [AppColors.primary100, AppColors.primary300]));
  }

  BoxDecoration secondary({
    bool isDisabled = false,
  }) {
    return BoxDecoration(
      borderRadius: _borderRadius,
      color: AppColors.white,
    );
  }

  BoxDecoration outline({
    bool isDisabled = false,
  }) {
    return BoxDecoration(
      gradient: const LinearGradient(
          colors: [AppColors.primary100, AppColors.primary300]),
      borderRadius: _borderRadius,
      color: AppColors.white,
    );
  }

  BoxDecoration disabled() {
    return BoxDecoration(
      borderRadius: _borderRadius,
      color: AppColors.gray500,
    );
  }
}
