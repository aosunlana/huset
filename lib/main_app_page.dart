import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:huset/config/routes/app_router.dart';

import 'config/injector/di.dart';
import 'config/styles/theme/app_theme.dart';

class MainAppPage extends StatefulWidget {
  final bool isFirstTimeOpened;
  final bool isSessionActive;
  const MainAppPage(
      {super.key,
      required this.isFirstTimeOpened,
      required this.isSessionActive});

  @override
  State<MainAppPage> createState() => _MainAppPageState();
}

class _MainAppPageState extends State<MainAppPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: DI.resolve<AppRouter>().config(
            deepLinkBuilder: (_) => DeepLink([_prepareInitialRoute()]),
          ),
      theme: AppTheme.fromType(ThemeType.light).themeData,
    );
  }

  PageRouteInfo _prepareInitialRoute() {
    if (widget.isFirstTimeOpened) {
      return const OnboardRoute();
    } else {
      if (widget.isSessionActive) {
        return HomeRoute();
      }
      return const LoginRoute();
    }
  }
}
