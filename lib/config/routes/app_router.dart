import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'package:huset/features/onboarding/presentation/pages/home_page.dart';
import 'package:huset/features/onboarding/presentation/pages/login_page.dart';
import 'package:huset/features/onboarding/presentation/pages/onboard_page.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: OnboardRoute.page, path: OnboardPage.path, initial: true),
        AutoRoute(page: HomeRoute.page, path: HomePage.path),
        AutoRoute(page: LoginRoute.page, path: LoginPage.path),
      ];
}
