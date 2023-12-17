import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:huset/config/styles/colors/app_colors.dart';
import 'package:huset/config/styles/decorations/app_decorations.dart';
import 'package:huset/config/styles/dimensions/app_dimensions.dart';
import 'package:huset/config/styles/images/app_images.dart';
import 'package:huset/config/styles/text_styles/app_text_styles.dart';
import 'package:huset/features/common_widgets/adaptive/adaptive_button.dart';
import 'package:huset/features/common_widgets/adaptive/adaptive_outline_button.dart';
import 'package:huset/features/onboarding/presentation/pages/login_page.dart';
import 'package:huset/l10n/app_loc.dart';

@RoutePage()
class OnboardPage extends StatelessWidget {
  static const String path = '/onboard-page';

  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppDimensions.padding.bigHorizontal(),
        child: SafeArea(
            child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            SvgPicture.asset(AppImages.svg.welcomeImage),
            const Spacer(flex: 3),
            Text(
              AppLoc.of(context).onboardWelcomeMessage,
              style: AppTextStyles.h1().copyWith(fontSize: 36),
            ),
            const Spacer(
              flex: 3,
            ),
            AdaptiveButton(
                onPressed: () => context.router.pushNamed(LoginPage.path),
                decoration: AppDecorations.button.primary(),
                child: Text(
                  AppLoc.of(context).signUpButtonLabel,
                  style: AppTextStyles.h6().copyWith(color: AppColors.white),
                )),
            const Spacer(
              flex: 1,
            ),
            AdaptiveOutlineButton(
                onPressed: () => context.router.pushNamed(LoginPage.path),
                child: Text(
                  AppLoc.of(context).signInButtonLabel,
                  style: AppTextStyles.h6(),
                )),
            const Spacer(
              flex: 5,
            ),
          ],
        )),
      ),
    );
  }
}
